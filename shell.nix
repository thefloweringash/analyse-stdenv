{ pkgs ? import <nixpkgs> {} }:

let
  inherit (import ./nix/ruby.nix { inherit pkgs; })
    ruby rubyEnv;
in

rubyEnv.env
