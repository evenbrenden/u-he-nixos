with import <nixpkgs> { };

pkgs.callPackage (import ./common.nix) {
  pluginName        = "ChowMatrix";
  pluginUrl         = "https://github.com/Chowdhury-DSP/ChowMatrix/releases/download/v1.3.0/ChowMatrix-Linux-x64-1.3.0.deb";
  pluginSha256      = "0rx7h42nrk38pcn5jksjzf5pmakizmarynqhijvgxzpwlaxlj9rk";
  pluginHomePage    = "https://chowdsp.com/products.html";
  pluginDescription = "Chow Matrix VST Plugin";
  pluginUnpackPhase = "";
  pluginVersion     = "1.0.0";
  pluginSourceRoot  = "";
}

