#!/bin/sh

export NIXPKGS_ALLOW_UNFREE=1
nix-build -E 'with import <nixpkgs> {}; callPackage ./excite-snare.nix {}'
ln -sf $(realpath result)/lib/excite_snare_drum ~/.vst3/excite_snare_drum.vst3
rm -r ./result
