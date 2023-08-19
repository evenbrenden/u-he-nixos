with import <nixpkgs> { };

pkgs.callPackage (import ./common.nix) {
  pluginName        = "TAL-BassLine-101";
  pluginUrl         = "https://tal-software.com/downloads/plugins/TAL-BassLine-101_64_linux.zip";
  pluginSha256      = "0h3ccqv9j14scx6mi4xshgg25d7gxxwn4v4glgsi47rx1svaqk21";
  pluginHomePage    = "https://tal-software.com/products/tal-bassline-101";
  pluginDescription = "TAL-BassLine-101 VST Plugin";
  pluginUnpackPhase = "";
  pluginVersion     = "1.0.0";
  pluginSourceRoot  = "";
}

