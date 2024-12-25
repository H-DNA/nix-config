{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };
 
  outputs = { self, nixpkgs }: { 
    nixosConfigurations = let
      lib = nixpkgs.lib;
      hosts = [ "x86_64-linux" ];
      hostname = "hell";
      default-username = "huydna";
    in lib.foldl (res: arch: lib.recursiveUpdate res {
      ${arch} = nixpkgs.lib.nixosSystem {
        system = arch;
        specialArgs = {
          inherit arch;
          inherit hostname;
          inherit default-username;
        };
        modules = [
          ./hosts
        ];
      };
    }) {} hosts;
  };
}
