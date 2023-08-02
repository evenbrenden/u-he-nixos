# u-he-nixos

u-he Linux plugins seem to use hardcoded paths to `~/.u-he` for resources (like fonts and images) at runtime. I haven't figured out how to patch that, so here's an impure u-he plugin installer for NixOS.

## Example usage

```
./install.sh u-he-diva.nix
```

## How it works

1. The derivation is built by auto-patching plugin binaries with a set of dependencies that are common to all plugins.
2. The plugin is installed to your home directory using the shipped installer. Because it is not installed to your Nix store, you run the risk of dependencies being garbage collected. This also means that the plugin must be uninstalled manually.

## Notes

- `~/.u-he` is also used for user settings and licenses.
- It looks like the `*.so` files needs to be user writable.
