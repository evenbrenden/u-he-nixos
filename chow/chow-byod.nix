with import <nixpkgs> { };

pkgs.callPackage (import ./common.nix) {
  pluginName        = "BYOD";
  pluginUrl         = "https://github.com/Chowdhury-DSP/BYOD/releases/download/v1.2.0/BYOD-Linux-x64-1.2.0.deb";
  pluginSha256      = "16kpbkds2jq9nzqibikiaim6dnp8clnyc078hqh4f5sn17x8nd0n";
  pluginHomePage    = "https://chowdsp.com/products.html";
  pluginDescription = "BYOD VST Plugin";
  pluginUnpackPhase = "";
  pluginVersion     = "1.0.0";
  pluginSourceRoot  = "";
}

