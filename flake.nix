{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/24.05";
    home-manager.url = "github:nix-community/home-manager/release-24.05";
  };

  outputs = { self, nixpkgs, home-manager }: {
    nixosConfigurations = {
      hell-nixos = nixpkgs.lib.nixosSystem {
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
