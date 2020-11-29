Until I can figure out how to do this purely:

* Build a package (for example `./u-he-diva.nix`):
    * `$ nix-build -E '((import <nixpkgs> {}).callPackage (import [package]) {})'`
* Make a writable copy of the resulting build:
    * `$ cp -r result/ build`
    * `$ chmod -R +w build`
* Install the plugin to your `$HOME`:
    * `$ ./build/lib/vst/install.sh`
* Clean up:
    * `$ rm -r result`
    * `$ rm -r build`
