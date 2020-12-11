<h1>U-He plugin installer for NixOS</h1>

Example usage: `install.sh u-he-diva.nix`

This is what happens:
* The derivation is built in order to patch the prebuilt binaries and resolve dynamically linked dependencies. These are the same for all plugins I have looked at so far.
* Using the resulting build, the plugin is installed to your home directory using the shipped installer. Because it is not installed in your Nix store, this runs the risk of the dependencies being garbage collected. It also means that the plugin must be uninstalled manually.

Doing like this until I can find a better way to do it.
