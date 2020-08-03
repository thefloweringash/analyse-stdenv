#!/usr/bin/env ruby

require 'json'

def find_stdenv(indrvs)
    stdenv = indrvs.select { |d| d =~ /stdenv/ }

    raise "ambiguous" if stdenv.length > 1
    return nil if stdenv.length != 1

    stdenv.first
end

def drop_hash(path)
  # assuming /nix/store/hash(32)-
  prefix = "/nix/store/".length + 32 + 1
  path[prefix...]
end

def stdenv_stage(stdenv)
  if (match = stdenv.match(/bootstrap-stage(\d)-stdenv/))
    match[1]
  end
end

def print_drv_by_stdenv(deps)
  result = deps
    .group_by { |drv, indrvs| find_stdenv(indrvs) }
    .transform_values { |drvlist| drvlist.map(&:first).map { |drv| drop_hash(drv) }.sort }
    .sort_by { |stdenv, v| [(stdenv_stage(stdenv) if stdenv) || "", v.length] }
    .map { |stdenv, v| [(drop_hash(stdenv) if stdenv), v] }
  puts(result.to_json)
end


def main
  deps = JSON.parse(STDIN.read)
  print_drv_by_stdenv(deps)
end

main
