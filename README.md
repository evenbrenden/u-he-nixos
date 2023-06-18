# u-he-nixos

u-he plugin installer for NixOS.

Example usage: `install.sh u-he-diva.nix`

How it works:

1. The derivation is built using a common set of dependencies.
2. The plugin is installed to your home directory using the shipped installer. Because it is not installed to your Nix store, you run the risk of dependencies being garbage collected. This also means that the plugin must be uninstalled manually.

Doing it like this until I can find a better way.
