with import <nixpkgs> { };

let
  name = "OB-Xd";

in pkgs.callPackage (import ./common.nix) {
  pluginName        = name;
  pluginUrl         = "https://www.discodsp.com/download/?id=9";
  pluginSha256      = "1rgyj832v3m8w9bbbkw2i4c9f6485zxh2xmn4qsfpzhq8p746rmh";
  pluginHomePage    = "https://www.discodsp.com/obxd/";
  pluginDescription = "Oberheim VST Plugin";
  pluginUnpackPhase = "mkdir ${name} && cd ${name} && unzip $src"; # Unzipped in pwd by default, so need to override for nix
  pluginVersion     = "1.0.0";
  pluginSourceRoot  = "";
}

