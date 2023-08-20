with import <nixpkgs> { };

pkgs.callPackage (import ./common.nix) {
  pluginName        = "ChowKick";
  pluginUrl         = "https://github.com/Chowdhury-DSP/ChowKick/releases/download/v1.2.0/ChowKick-Linux-x64-1.2.0.deb";
  pluginSha256      = "0bxvd4wzall3gkjsyk23bkfcpv172pbqil4niwc1rbylbg32h4rc";
  pluginHomePage    = "https://chowdsp.com/products.html";
  pluginDescription = "Chow Kick VST Plugin";
  pluginUnpackPhase = "";
  pluginVersion     = "1.0.0";
  pluginSourceRoot  = "";
}

