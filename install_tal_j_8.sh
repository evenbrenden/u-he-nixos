#!/bin/sh

export NIXPKGS_ALLOW_UNFREE=1
nix-build -E 'with import <nixpkgs> {}; callPackage ./tal-j-8.nix {}'
ln -sf $(realpath result)/lib/tal-j-8 ~/.vst/TAL-J-8
rm -r ./result
