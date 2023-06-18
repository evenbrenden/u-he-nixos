with import <nixpkgs> { };

let
  name = "u-he-zebra2";
  url = "https://www.u-he.com/downloads/linux/beta/9775/Zebra2_291_9775_Linux.tar.xz";
  sha256 = "09i2shw0h9a5654hd61qrnrgm91ksbricy0152nciddhjq3h8r59";
in pkgs.callPackage (import ./common.nix) {
  pluginName = name;
  pluginUrl = url;
  pluginSha256 = sha256;
}
