with import <nixpkgs> { };

pkgs.callPackage (import ./common.nix) {
  pluginName        = "TAL-J-8";
  pluginUrl         = "https://tal-software.com/downloads/plugins/TAL-J-8_64_linux.zip";
  pluginSha256      = "0ab4rdmarqanvscm2qn9vykxp7nnggbkbn7s67580m6xdmjr9fwz";
  pluginHomePage    = "https://tal-software.com/products/tal-j-8";
  pluginDescription = "TAL-J-8 VST Plugin";
  pluginUnpackPhase = "";
  pluginVersion     = "1.0.0";
  pluginSourceRoot  = "";
}

