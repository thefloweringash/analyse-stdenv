cmake_minimum_required(VERSION 3.12.0)
project(nix-build-deps)

find_package(PkgConfig REQUIRED)
find_package(nlohmann_json 3.2.0 REQUIRED)
find_package(Boost REQUIRED COMPONENTS graph)

pkg_check_modules(nix-store nix-store>=2.3.0 IMPORTED_TARGET nix-store)

add_executable(nix-build-deps
  nix-build-deps.cc)

target_link_libraries(nix-build-deps
  PRIVATE
  nlohmann_json::nlohmann_json
  PkgConfig::nix-store
  Boost::graph
  )
