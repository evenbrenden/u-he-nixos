with import <nixpkgs> { };

let
  name = "u-he-zebra2";
  url = "https://uhe-dl.b-cdn.net/releases/Zebra2_293_12092_Linux.tar.xz";
  sha256 = "sha256-/faBEP9zAYbo9J/1RAWrLrrE6OKnGqQrgxE/eYMCtsY=";
in pkgs.callPackage (import ./common.nix) {
  pluginName = name;
  pluginUrl = url;
  pluginSha256 = sha256;
}
