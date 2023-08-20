with import <nixpkgs> { };

pkgs.callPackage (import ./common.nix) {
  pluginName        = "ChowCentaur";
  pluginUrl         = "https://github.com/jatinchowdhury18/KlonCentaur/releases/download/v1.4.0/ChowCentaur-Linux-x64-1.4.0.deb";
  pluginSha256      = "00r3qnlvpi42kbcmkf70kdx86fwy01clagdc8jqz0iav5sizvl5b";
  pluginHomePage    = "https://chowdsp.com/products.html";
  pluginDescription = "Chow Centaur VST Plugin";
  pluginUnpackPhase = "";
  pluginVersion     = "1.0.0";
  pluginSourceRoot  = "";
}

