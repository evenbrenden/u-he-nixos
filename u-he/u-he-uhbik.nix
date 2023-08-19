# Note that Uhbik VST3 plugins crash on load (tested with REAPER).
# Not sure if this is an issue with the source or this installer.

with import <nixpkgs> { };

let
  name = "u-he-diva";
  url = "https://dl.u-he.com/releases/Uhbik_131_8256_Linux.tar.xz";
  sha256 = "sha256-kYL7pOGIJv1++p+PMNOy/g6L8dOQ/45yc+KgqpNSyrM=";
in pkgs.callPackage (import ./common.nix) {
  pluginName = name;
  pluginUrl = url;
  pluginSha256 = sha256;
}
