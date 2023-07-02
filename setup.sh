#! /bin/bash

# install nix

# sh <(curl -L https://nixos.org/nix/install)
# nix-env -iA cachix -f https://cachix.org/api/v1/install
# cachix use devenv
nix-env -if https://github.com/cachix/devenv/tarball/latest

