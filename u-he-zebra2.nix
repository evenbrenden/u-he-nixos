with import <nixpkgs> { };

let
  name = "u-he-zebra2";
  url = "https://u-he.com/downloads/releases/Zebra3_300_21799_Linux.tar.xz";
  sha256 = "sha256-gPvvtEzu1M9MNOOelG/4H99as8Wtq2CUm8ZyvY1fpmY=";
in pkgs.callPackage (import ./common.nix) {
  pluginName = name;
  pluginUrl = url;
  pluginSha256 = sha256;
}
