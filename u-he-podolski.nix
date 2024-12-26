with import <nixpkgs> { };

let
  name = "u-he-satin";
  url = "https://dl.u-he.com/releases/Podolski_123_12092_Linux.tar.xz";
  sha256 = "sha256-jsCursOUP4sMUNcQoISlIoAg+tLC2EF9uWCb/74+m3E=";
in
pkgs.callPackage (import ./common.nix) {
  pluginName = name;
  pluginUrl = url;
  pluginSha256 = sha256;
}
