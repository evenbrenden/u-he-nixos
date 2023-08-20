with import <nixpkgs> { };

let
  name = "CardinalSynth";

in pkgs.callPackage (import ./common.nix) {
  pluginName        = name;
  pluginUrl         = "https://github.com/DISTRHO/Cardinal/releases/download/23.07/Cardinal-linux-x86_64-23.07.tar.gz";
  pluginSha256      = "sha256-CuA1pMK4VXV8PLGCMZm84JWzbazrLLJEy8rZ39XyqYI=";
  pluginHomePage    = "https://github.com/DISTRHO/Cardinal/";
  pluginDescription = "VCV Rack Fork VST3 Plugin";
  pluginUnpackPhase = "mkdir ${name} && cd ${name} && tar -xf $src"; # Unzipped in pwd by default, so need to override for nix
  pluginVersion     = "1.0.0";
  pluginSourceRoot  = "";
}

