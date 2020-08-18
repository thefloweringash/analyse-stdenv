{ pkgs }:

let
  ruby = pkgs.ruby_2_7;

  rubyEnv = pkgs.bundlerEnv {
    name = "analyse-stdenv";
    inherit ruby;
    gemdir = ./..;
  };
in

{
  inherit ruby rubyEnv;
}
