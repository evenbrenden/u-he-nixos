#!/bin/sh

export NIXPKGS_ALLOW_UNFREE=1
nix-build -E 'with import <nixpkgs> {}; callPackage ./excite-cymbal.nix {}'
ln -sf $(realpath result)/lib/excite_cymbal ~/.vst3/excite_cymbal.vst3
rm -r ./result
