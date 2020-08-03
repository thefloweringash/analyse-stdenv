{ stdenv, pkg-config, cmake, ninja, nix, boost, nlohmann_json }:

stdenv.mkDerivation {
  name = "nix-build-deps";
  src = stdenv.lib.sourceByRegex ./. [ "CMakeLists\.txt" ".*\.cc$" ];

  nativeBuildInputs = [ pkg-config cmake ninja ];
  buildInputs = [ nix boost nlohmann_json ];

  installPhase = ''
    mkdir -p $out/bin
    cp $name $out/bin
  '';
}
