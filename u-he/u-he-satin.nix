with import <nixpkgs> { };

let
  name = "u-he-satin";
  url = "https://dl.u-he.com/releases/Satin_132_12092_Linux.tar.xz";
  sha256 = "sha256-iSLodSJan0DzFMGbw2LRm9rZ9YD8Y8bDOzV/dWcw3Pk=";
in pkgs.callPackage (import ./common.nix) {
  pluginName = name;
  pluginUrl = url;
  pluginSha256 = sha256;
}
