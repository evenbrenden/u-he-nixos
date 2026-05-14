# u-he-nixos

From what I gather, u-he Linux plugins use hardcoded paths to `~/.u-he` for resources (like fonts and images) at runtime. I haven't figured out how to patch that, so here's an impure u-he plugin installer for NixOS.

## Example usage

```
./install.sh u-he-diva.nix
```

## How it works

1. A derivation is built by auto-patching plugin binaries with a set of dependencies that are common to all the current plugins.
2. A plugin is installed to your home directory using the shipped installer. Because it is not installed to your Nix store, you run the risk of dependencies being garbage collected. This also means that the plugin must be uninstalled manually.

## Plugin selection

I've only added the plugins that I use myself. Under the assumption that the other plugins from u-he has the same dependencies as those, it should be straightforward to add them too.

## Notes to self

- `~/.u-he` is also used for user settings and licenses.
- Looks like the `*.so` files needs to be user writable.
