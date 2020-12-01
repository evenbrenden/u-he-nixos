U-He plugin installer for NixOS

Example usage: `install.sh u-he-diva.nix`

Building is needed to patch the prebuilt binaries and resolve dynamically linked
dependencies. The plugin is then installed to your home directory using the
shipped installer. Because this is impure, it runs the risk of the dependencies
being garbage collected. It also means that the plugin must be uninstalled
manually. Doing this until I can find a better way to do it.
