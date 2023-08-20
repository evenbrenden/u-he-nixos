with import <nixpkgs> { };

pkgs.callPackage (import ./common.nix) {
  pluginName        = "CHOWTapeModel";
  pluginUrl         = "https://github.com/jatinchowdhury18/AnalogTapeModel/releases/download/v2.11.1/ChowTapeModel-Linux-x64-2.11.1.deb";
  pluginSha256      = "07dmx2l8c9gqchxmfp9nl739b075cnl96725srdwqxjzl56sh59j";
  pluginHomePage    = "https://chowdsp.com/products.html";
  pluginDescription = "Chow Tape VST Plugin";
  pluginUnpackPhase = "";
  pluginVersion     = "1.0.0";
  pluginSourceRoot  = "";
}

