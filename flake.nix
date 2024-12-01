{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
  };

  outputs = { self, nixpkgs, home-manager }: {
    nixosConfigurations = {
      hell = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./default.nix
          {
            imports = [
              home-manager.nixosModules.home-manager
            ];
          }
        ];
      };
    };
  };
}
