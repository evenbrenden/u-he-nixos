{
  description = "u-he-nixos";

  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in {
      packages.x86_64-linux = {
        diva = import ./diva.nix { inherit pkgs; };
        satin = import ./satin.nix { inherit pkgs; };
        uhbik = import ./uhbik.nix { inherit pkgs; };
        zebra2 = import ./zebra2.nix { inherit pkgs; };
      };
    };
}
