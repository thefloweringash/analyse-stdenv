#!/usr/bin/env bash

nix-build-deps $(nix-instantiate -A hello) | drv-by-stdenv
