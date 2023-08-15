#!/bin/sh

export NIXPKGS_ALLOW_UNFREE=1
nix-build -E 'with import <nixpkgs> {}; callPackage ./tal-bassline-101.nix {}'
ln -sf $(realpath result)/lib/tal-bassline-101 ~/.vst/TAL-BassLine-101
