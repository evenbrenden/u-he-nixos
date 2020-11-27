Until I can figure out how to do this purely:

* `nix-build -E '((import <nixpkgs> {}).callPackage (import ./u-he-diva.nix) { })'` (for example)
* Locate and run `install.sh` inside `result` (then delete `result`) => plugin is in your `$HOME`
