with import <nixpkgs> { };

let
  name = "u-he-uhbik";
  url = "https://u-he.com/downloads/releases/Uhbik_200_19684_Linux.tar.xz";
  sha256 = "sha256-XJN08jE3xo8KKh3zCDEhkjju/G+4nND/H53tY3sPOTY=";
in pkgs.callPackage (import ./common.nix) {
  pluginName = name;
  pluginUrl = url;
  pluginSha256 = sha256;
}
