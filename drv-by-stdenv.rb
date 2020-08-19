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
  attr_reader :deps, :references, :parsed

  def initialize(deps)
    @deps = deps
    @references = {}
    @parsed = {}
  end

  def parse(path)
    return parsed[path] if parsed.has_key?(path)

    inputs = deps[path]

    stdenv = find_stdenv(inputs)
    stdenv = parse(stdenv) if stdenv

    result =
      Derivation.with(
        path: path,
        stdenv: stdenv,
        inputs: inputs.map { |x| parse(x) },
        references: get_references(path),
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

def main
  root = ARGV[0]
  deps = JSON.parse($stdin.read)

  raise 'missing root' if root.nil?

  parser = Parser.new(deps)
  parser.parse(root)

  drvs_by_stdenv = drv_by_stdenv(parser.parsed)

  puts '# Derivation by stdenv'
  drvs_by_stdenv.each do |stdenv, drvs|
    puts "## #{stdenv || 'no stdenv'}"
    drvs.each do |drv|
      puts " - #{drop_hash(drv.path)}"
    end
    puts
  end

  rebuilds_by_name = parser.parsed.values.sort_by(&:name).each_with_object({}) do |drv, acc|
    if (drv.stdenv && stage = stdenv_stage(drv.stdenv.name))
      (acc[drv.name] ||= []) << stage
    end
  end

  puts '# Rebuilds by package name'
  rebuilds_by_name.each do |name, stages|
    puts " - #{name} #{stages.sort.join(',')}"
  end
end

main
