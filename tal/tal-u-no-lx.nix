with import <nixpkgs> { };

pkgs.callPackage (import ./common.nix) {
  pluginName        = "TAL-U-NO-LX-V2";
  pluginUrl         = "https://tal-software.com/downloads/plugins/TAL-U-NO-LX-V2_64_linux.zip";
  pluginSha256      = "1kz38qlw54c7awns5zgnyn78dcv9gpqiwn2lkz2004na1h0204w0";
  pluginHomePage    = "https://tal-software.com/products/tal-u-no-lx";
  pluginDescription = "TAL-U-NO-LX-V2 VST Plugin";
  pluginUnpackPhase = "";
  pluginVersion     = "1.0.0";
  pluginSourceRoot  = "";
}
