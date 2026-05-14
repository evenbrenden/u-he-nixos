with import <nixpkgs> { };

let
  name = "u-he-diva";
  url = "https://dl.u-he.com/releases/Diva_148_16519_Linux.tar.xz";
  sha256 = "sha256-gOYklSY7TIsLFRWRXlnnNvsxhgAH4zBgP48ftWuNqvM=";
in pkgs.callPackage (import ./common.nix) {
  pluginName = name;
  pluginUrl = url;
  pluginSha256 = sha256;
}
