U-He plugin installer for NixOS

Example usage: `install.sh u-he-diva.nix`

Building is needed to patch the prebuilt binaries and solve dynamically linked
dependencies. The plugins are then installed to your home directory using the
shipped installer. In addition to being impure, this runs the risk of the
dependencies being garbage collected. It also means that the plugins must be
uninstalled manually. Doing this until I can find a better way to do it.
