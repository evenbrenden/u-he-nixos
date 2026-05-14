#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bintools

set -e

trap "{ rm -rf result; rm -rf build; }" EXIT

if [[ "$#" -ne 1 ]]; then
    echo "Usage: install.sh [flake output/plugin name]"
    exit 1
fi

nix build ".#$1"
cp -r result/. build
chmod -R +w build
./build/lib/install.sh
