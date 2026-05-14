#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bintools

set -e

trap "{ rm -rf result; rm -rf build; }" EXIT

if [[ "$#" -ne 1 ]]; then
    echo "Usage: install.sh [package file]"
    exit 1
fi

PACKAGE="$1"

if [[ ! -f "$PACKAGE" ]]; then
    echo "$PACKAGE not found"
    exit 1
fi

nix-build "$PACKAGE"
cp -r result/. build
chmod -R +w build
./build/lib/install.sh
