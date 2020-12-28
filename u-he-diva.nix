with import <nixpkgs> {};

let
  name = "u-he-diva";
  url = "https://www.u-he.com/downloads/linux/beta/9775/Diva_144_9775_Linux.tar.xz";
  sha256 = "0dz5mrnxqvj28kbhsvjnq341l8k5zhh3ncw13pzpk8wcffqk16qs";
in
  pkgs.callPackage (import ./common.nix) { pluginName = name; pluginUrl = url; pluginSha256 = sha256; }
