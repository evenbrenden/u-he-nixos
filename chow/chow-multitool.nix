with import <nixpkgs> { };

pkgs.callPackage (import ./common.nix) {
  pluginName        = "ChowMultiTool";
  pluginUrl         = "https://github.com/Chowdhury-DSP/ChowMultiTool/releases/download/v1.0.0/ChowMultiTool-Linux-x64-1.0.0.deb";
  pluginSha256      = "0c6d7nrhd16548y8xvhwb4jk44xc602ynwww3dvdahswijx09mp9";
  pluginHomePage    = "https://chowdsp.com/products.html";
  pluginDescription = "Chow Multitool VST Plugin";
  pluginUnpackPhase = "";
  pluginVersion     = "1.0.0";
  pluginSourceRoot  = "";
}

