Until I can figure out how to do this purely:

* Build the package, for example:
    * `nix-build -E '((import <nixpkgs> {}).callPackage (import ./u-he-diva.nix) { })'`
* Make a writable copy of the resulting build:
    * `cp -r result/ build`
    * `chmod -R +w build`
* Install the plugin to your `$HOME` by locating and running `install.sh`
* Delete all build artifacts (`result` and `build`)
