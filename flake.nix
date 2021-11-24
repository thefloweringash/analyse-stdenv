{
  description = "analyse-stdenv";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  inputs.flake-compat = {
    url = "github:edolstra/flake-compat";
    flake = false;
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        inherit (nixpkgs) lib;

        pkgs = nixpkgs.legacyPackages.${system};

        inherit (import ./nix/ruby.nix { inherit pkgs; })
          ruby rubyEnv;

        rubySource = lib.sourceFilesBySuffices ./. [ "rb" ];
      in rec {
        packages = {
          nix-build-deps = pkgs.callPackage ./nix-build-deps {
            nix = pkgs.nix_2_3;
          };

          drv-by-stdenv = pkgs.writeScriptBin "drv-by-stdenv" ''
            exec ${rubyEnv.wrappedRuby}/bin/ruby ${rubySource}/drv-by-stdenv.rb "$@"
          '';

          analyse-stdenv = pkgs.writeScriptBin "analyse-stdenv" ''
            export PATH=${lib.makeBinPath [
              packages.nix-build-deps
              packages.drv-by-stdenv
            ]}:$PATH
            hello=$(nix-instantiate -A hello "$@")
            nix-build-deps $hello | drv-by-stdenv $hello
          '';
        };

        defaultPackage = packages.analyse-stdenv;

        devShell = rubyEnv.env;
      }
    );
}
