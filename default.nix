{ pkgs ? import <nixpkgs> {} }:

let
  inherit (pkgs) callPackage substituteAll lib;

  nix-build-deps = pkgs.callPackage ./nix-build-deps {};

  drv-by-stdenv = pkgs.runCommand "drv-by-stdenv" {
    buildInputs = [ pkgs.ruby ];
  } ''
    mkdir -p $out/bin
    cp ${./drv-by-stdenv.rb} $out/bin/$name
    chmod a+x $out/bin/$name
    patchShebangs $out/bin
  '';

  analyse-darwin-stdenv = pkgs.runCommand "analyse-darwin-stdenv" {
    nativeBuildInputs = [ pkgs.makeWrapper ];
  } ''
    set -x
    mkdir -p $out/bin
    cp ${./analyse-darwin-stdenv.sh} $out/bin/$name
    chmod a+x $out/bin/$name
    patchShebangs $out/bin

    wrapProgram $out/bin/$name --prefix PATH : ${lib.makeBinPath [
      nix-build-deps drv-by-stdenv
    ]}
  '';

in
  analyse-darwin-stdenv
