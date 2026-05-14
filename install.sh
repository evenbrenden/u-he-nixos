#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bintools

set -euo pipefail

trap "rm -rf result build" EXIT

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 [flake output/plugin name]"
    exit 1
fi

flake_output="$1"

nix build ".#${flake_output}"
rm -rf build
cp -r result/. build
chmod -R +w build

./build/lib/install.sh
