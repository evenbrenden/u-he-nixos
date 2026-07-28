#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bintools

set -euo pipefail

trap "rm -rf result build" EXIT

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 [flake output/plugin name]"
    nix eval --raw .#packages.x86_64-linux --apply 'pluginName: builtins.concatStringsSep "\n" (builtins.attrNames pluginName)'
    exit 1
fi

flake_output="$1"

nix build ".#${flake_output}"
rm -rf build
cp -r result/. build
chmod -R +w build

./build/lib/install.sh
