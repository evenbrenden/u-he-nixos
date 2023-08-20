#!/bin/sh


if [[ $# -ne 1 ]]; then
	echo "Usage: install.sh [package file]"
	exit 1
fi

if [[ ! -f $1 ]]; then
	echo "$1 not found"
	exit 1
fi

PLUGIN_TYPE=$(dirname $1)    # Extracts path from argument e.g "./u-he" in "./u-he/u-he-diva.nix"
NIX_FILE=$(basename $1)      # Filename e.g. "tal-bassline.nix", path is stripped
PLUGIN_NAME="${NIX_FILE%.*}" # Filename without ".nix" extension and path


# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# U-he install
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
if [[ $PLUGIN_TYPE == "u-he" || $PLUGIN_TYPE == "./u-he" ]]; then
	set -e
	nix-build $1
	cp -r result/ build
	chmod -R +w build
	./build/lib/install.sh
	rm -r result
	rm -r build
	exit 0
fi

# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# OB-XD Install
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
if [[ $PLUGIN_TYPE == "obxd" || $PLUGIN_TYPE == "./obxd" ]]; then
	export NIXPKGS_ALLOW_UNFREE=1
	nix-build $1
	ln -sf $(realpath result)/ ~/.vst/$PLUGIN_NAME
	rm -r ./result
	exit 0
fi

# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# EXCITE, TAL install
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
export NIXPKGS_ALLOW_UNFREE=1
nix-build $1
ln -sf $(realpath result)/ ~/.vst3/$PLUGIN_NAME.vst3
rm -r ./result
