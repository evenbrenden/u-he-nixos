with import <nixpkgs> { };

pkgs.callPackage (import ./common.nix) {
  pluginName        = "ChowPhaserStereo";
  pluginUrl         = "https://github.com/jatinchowdhury18/ChowPhaser/releases/download/v1.1.1/ChowPhaser-Linux-x64-1.1.1.deb";
  pluginSha256      = "12bqfgv5x9v552hnk06fnn0w5g4b9k4s12pdx1aw78kfx4hg4kjm";
  pluginHomePage    = "https://chowdsp.com/products.html";
  pluginDescription = "Chow Phaser Stereo VST Plugin";
  pluginUnpackPhase = "";
  pluginVersion     = "1.0.0";
  pluginSourceRoot  = "";
}

