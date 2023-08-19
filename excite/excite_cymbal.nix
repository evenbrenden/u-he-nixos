with import <nixpkgs> { };

pkgs.callPackage (import ./common.nix) {
  pluginName        = "excite_cymbal";
  pluginUrl         = "https://plugins4free.com/get_plug/EXCITE-CYMBAL_Linux.zip";
  pluginSha256      = "1iyz03d1qjv4d5ivp6x6gl2lbgwxi3d102xw8c72vvzx0spm6yvc";
  pluginHomePage    = "https://www.chair.audio/product/excite_cymbal/";
  pluginDescription = "Physical modeling cymbal VST3 Plugin";
  pluginUnpackPhase = "";
  pluginVersion     = "1.0.0";
  pluginSourceRoot  = "";
}

