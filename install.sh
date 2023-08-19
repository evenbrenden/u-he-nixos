#!/bin/sh

set -e

if [[ $# -ne 1 ]]; then
	echo "Usage: install.sh [package file]"
	exit 1
fi

if [[ ! -f $1 ]]; then
	echo "$1 not found"
	exit 1
fi

NIX_FILE=$(basename $1)      # Filename e.g. "tal-bassline.nix", path is stripped
PLUGIN_NAME="${NIX_FILE%.*}" # Filename without ".nix" extension and path

export NIXPKGS_ALLOW_UNFREE=1
#nix-build -E "with import <nixpkgs> {}; callPackage $1 {}"
nix-build $1
ln -sf $(realpath result)/ ~/.vst3/$PLUGIN_NAME.vst3
rm -r ./result

if [[ "" == "1" ]]; then
	nix-build $1
	cp -r result/ build
	chmod -R +w build
	./build/lib/install.sh
	rm -r result
	rm -r build
fi
