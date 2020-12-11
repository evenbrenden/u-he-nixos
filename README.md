<h1>u-he plugin installer for NixOS</h1>

Example usage: `install.sh u-he-diva.nix`

This is what happens:
* The derivation is built in order to patch the prebuilt binaries and resolve dynamically linked dependencies. The dependencies are the same for all the plugins I have looked at so far and it's nothing esoteric.
* The plugin is installed to your home directory using the shipped installer. Because it is not installed to your Nix store, you run the risk of dependencies being garbage collected. It also means that the plugin must be uninstalled manually.

Doing it like this until I can find a better way to do it.
