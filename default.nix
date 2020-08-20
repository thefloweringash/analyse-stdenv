{ pkgs ? import <nixpkgs> {} }:

let
  inherit (pkgs) callPackage substituteAll lib;

  inherit (import ./nix/ruby.nix { inherit pkgs; })
    ruby rubyEnv;

  nix-build-deps = pkgs.callPackage ./nix-build-deps {};

  rubySource = pkgs.lib.sourceFilesBySuffices ./. ["rb"];

  drv-by-stdenv = pkgs.writeScriptBin "drv-by-stdenv" ''
    exec ${rubyEnv.wrappedRuby}/bin/ruby ${rubySource}/drv-by-stdenv.rb "$@"
  '';

  analyse-stdenv = pkgs.writeScriptBin "analyse-stdenv" ''
    export PATH=${lib.makeBinPath [ nix-build-deps drv-by-stdenv ]}:$PATH
    hello=$(nix-instantiate -A hello "$@")
    nix-build-deps $hello | drv-by-stdenv $hello
  '';

in
  analyse-stdenv
