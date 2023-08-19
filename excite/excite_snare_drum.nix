with import <nixpkgs> { };

let
  name = "excite_snare_drum";

in pkgs.callPackage (import ./common.nix) {
  pluginName        = name;
  pluginUrl         = "https://plugins4free.com/get_plug/excite_snare_drum-Linux.zip";
  pluginSha256      = "1wxbmzz05sya67h0xlkk56ppjxb08g34h6a6z61qi28nrrcx00lp";
  pluginHomePage    = "https://www.chair.audio/product/excite_snare_drum/";
  pluginDescription = "Physical modeling snare VST3 Plugin";
  pluginUnpackPhase = "mkdir ${name} && cd ${name} && unzip $src"; # Unzipped in pwd by default, so need to override for nix
  pluginVersion     = "1.0.0";
  pluginSourceRoot  = "";
}

