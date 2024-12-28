{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    ghostty.url = "github:ghostty-org/ghostty";
  };
 
  outputs = { self, nixpkgs, ghostty }: { 
    nixosConfigurations = let
      lib = nixpkgs.lib;
      hosts = [ "x86_64-linux" ];
      hostname = "hell";
      default-username = "huydna";
      other-pkgs = {
        inherit ghostty;
      };
    in lib.foldl (res: arch: lib.recursiveUpdate res {
      ${arch} = nixpkgs.lib.nixosSystem {
        system = arch;
        specialArgs = {
          inherit arch;
          inherit hostname;
          inherit default-username;
          inherit other-pkgs;
        };
        modules = [
          ./hosts
        ];
      };
    }) {} hosts;
  };
}
