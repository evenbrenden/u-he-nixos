{
  description = "u-he-nixos";
  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  outputs =
    { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      common = import ./common.nix;
      plugins = import ./plugins.nix;
    in
    {
      packages.x86_64-linux = builtins.mapAttrs (
        name: args: pkgs.callPackage common (args // { pluginName = "u-he-${name}"; })
      ) plugins;
    };
}
