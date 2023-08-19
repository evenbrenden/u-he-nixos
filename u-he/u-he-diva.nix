with import <nixpkgs> { };

let
  name = "u-he-diva";
  url = "https://dl.u-he.com/releases/Diva_145_12092_Linux.tar.xz";
  sha256 = "sha256-xyTQGVj7rHyrENFZEUe+U+7dfjdmSD973mE63ThfSfY=";
in pkgs.callPackage (import ./common.nix) {
  pluginName = name;
  pluginUrl = url;
  pluginSha256 = sha256;
}
