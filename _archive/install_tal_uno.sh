#!/bin/sh

export NIXPKGS_ALLOW_UNFREE=1
nix-build -E 'with import <nixpkgs> {}; callPackage ./tal-u-no-lx.nix {}'
ln -sf $(realpath result)/lib/tal-u-no-lx ~/.vst/TAL-U-NO-LX
rm -r ./result
