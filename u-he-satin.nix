with import <nixpkgs> {};

let
  name = "u-he-satin";
  url = "https://www.u-he.com/downloads/linux/beta/9775/Satin_131_9775_Linux.tar.xz";
  sha256 = "0nlv65w05c0hb6bay4hzrzxsdk1m4c2g90ckg93pbg141jlb87ni";
in
  pkgs.callPackage (import ./common.nix) { pluginName = name; pluginUrl = url; pluginSha256 = sha256; }
