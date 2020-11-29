Until I can figure out how to do this purely:

* Build the package (example plugin):
    * `$ nix-build -E '((import <nixpkgs> {}).callPackage (import ./u-he-diva.nix) { })'`
* Make a writable copy of the resulting build:
    * `$ cp -r result/ build`
    * `$ chmod -R +w build`
* Install the plugin to your `$HOME`:
    * `$ ./build/lib/vst/install.sh`
* Clean up:
    * `# rm -rf result`
    * `$ rm -rf build`
