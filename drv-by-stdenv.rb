#!/usr/bin/env ruby

# frozen_string_literal: true

require 'safe_values'
require 'json'
require 'set'

FINAL_STAGE = 99 # haaack hack hack

Derivation = Value.new(
  :path,
  :stdenv,
  :inputs,
  :references,
  :dominator_path,
) do
  def name
    drop_hash(path)
  end
end

def drop_hash(path)
  # assuming /nix/store/hash(32)-
  prefix = '/nix/store/'.length + 32 + 1
  path[prefix...]
end

def stdenv_stage(stdenv)
  case
  when (match = stdenv.match(/bootstrap-stage(\d)-stdenv/))
    Integer(match[1])
  when stdenv.match(/stdenv/)
    FINAL_STAGE
  else
    raise "Unable to determine stage of stdenv path #{stdenv}"
  end
end

def drv_by_stdenv(deps)
  deps
    .values
    .group_by { |drv| drv.stdenv&.path }
    .transform_values { |drvlist| drvlist.sort_by { |drv| drop_hash(drv.path) } }
    .sort_by { |stdenv, v| [(stdenv_stage(stdenv) if stdenv) || -1, v.length] }
    .map { |stdenv, v| [(drop_hash(stdenv) if stdenv), v] }
end

class Parser
  attr_reader :data, :references, :parsed

  def initialize(data)
    @data = data
    @references = {}
    @parsed = {}
  end

  def parse(path)
    return parsed[path] if parsed.has_key?(path)

    inputs, dominator_path = data[path].values_at('inputs', 'dominator')

    stdenv = find_stdenv(inputs)
    stdenv = parse(stdenv) if stdenv

    result =
      Derivation.with(
        path: path,
        stdenv: stdenv,
        inputs: inputs.map { |x| parse(x) },
        references: get_references(path),
        dominator_path: dominator_path,
      )

    inputs.each do |input|
      get_references(input) << result
    end

    parsed[path] = result

    result
  end

  private

  def get_references(path)
    references[path] ||= []
  end

  def find_stdenv(indrvs)
    stdenv = indrvs.select { |d| d =~ /stdenv/ }

    raise 'ambiguous stdenv' if stdenv.length > 1
    return nil if stdenv.length != 1

    stdenv.first
  end
end

def print_dominator_tree(drvs_by_dominator, el, prefix="")
  if (children = drvs_by_dominator[el.path])
    children = children.sort_by(&:name)
    children.each_with_index do |c, i|
      last = i == children.length - 1
      if last
        self_prefix = prefix + "`--"
        nested_prefix = prefix + "   "
      else
        self_prefix = prefix + "|--"
        nested_prefix = prefix + "|  "
      end

      stdenv = c.stdenv&.path
      puts "#{self_prefix} #{c.name}@#{stdenv_stage(stdenv) if stdenv}"
      print_dominator_tree(drvs_by_dominator, c, nested_prefix)
    end
  end
end

def main
  root = ARGV[0]
  data = JSON.parse($stdin.read)

  raise 'missing root' if root.nil?

  parser = Parser.new(data)
  parser.parse(root)

  drvs_by_stdenv = drv_by_stdenv(parser.parsed)

  puts '# Derivation by stdenv'
  drvs_by_stdenv.each do |stdenv, drvs|
    puts "## #{stdenv || 'no stdenv'}"
    drvs.each do |drv|
      extra = []

      if stdenv
        this_stage = stdenv_stage(stdenv)

        internal_usages = drv.references.count { |x| x.stdenv && stdenv_stage(x.stdenv.name) == this_stage }
        extra << "i=#{internal_usages}"

        external_usages = drv.references.count { |x| x.stdenv && stdenv_stage(x.stdenv.name) != this_stage }
        extra << "e=#{external_usages}"

        stdenv_usages = drv.references.map { |x| stdenv_stage(x.name) rescue nil }.compact.sort.uniq
        unless stdenv_usages.empty?
          extra << "s=[#{stdenv_usages.join(",")}]"
        end
      end

      # extra << "path=#{drv.path}"

      if extra.empty?
        puts " - #{drv.name}"
      else
        puts " - #{drv.name} (#{extra.join(", ")})"
      end
    end
    puts
  end

  rebuilds_by_name = parser.parsed.values.sort_by(&:name).each_with_object({}) do |drv, acc|
    if drv.stdenv && (stage = stdenv_stage(drv.stdenv.name))
      (acc[drv.name] ||= []) << stage
    end
  end

  puts '# Rebuilds by package name'
  rebuilds_by_name.each do |name, stages|
    puts " - #{name} #{stages.sort.join(',')}"
  end
  puts

  drvs_by_dominator = parser.parsed.values.group_by(&:dominator_path)
  puts '# Dominator tree'
  puts '```'

  if drvs_by_dominator[nil].length != 1
    puts 'warning: no singleton root dominator'
  end

  drvs_by_dominator[nil].each do |drv|
    puts drv.name
    print_dominator_tree(drvs_by_dominator, drv)
  end
  puts '```'
end

main
