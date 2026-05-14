{ pkgs }:

let
  name = "u-he-satin";
  url = "https://u-he.com/downloads/releases/Satin_133_15721_Linux.tar.xz";
  sha256 = "sha256-FmjgH+kt6E6bWLrGvUzABwhU7CdZ6AitFiZRjJY+M18=";
in pkgs.callPackage (import ./common.nix) {
  pluginName = name;
  pluginUrl = url;
  pluginSha256 = sha256;
}
