#!/bin/sh

export NIXPKGS_ALLOW_UNFREE=1
nix-build -E 'with import <nixpkgs> {}; callPackage ./tal-drum.nix {}'
ln -sf $(realpath result)/lib/tal-drum ~/.vst/TAL-Drum
rm -r ./result
