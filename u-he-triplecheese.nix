with import <nixpkgs> { };

let
  name = "u-he-triplecheese";
  url = "https://dl.u-he.com/releases/TripleCheese_13_12092_Linux.tar.xz";
  # sha256 = "sha256-xyTQGVj7rHyrENFZEUe+U+7dfjdmSD973mE63ThfSfY=";
  sha256 = "sha256-Xe0t2oiOWhNe5+U8JLt3b3WrZgYyLQgTSCQElL4uz68=";
in
pkgs.callPackage (import ./common.nix) {
  pluginName = name;
  pluginUrl = url;
  pluginSha256 = sha256;
}
