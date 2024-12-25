{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
  };

  outputs = { self, nixpkgs, home-manager }: {
    nixosConfigurations = {
      x86_64-linux = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts
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
