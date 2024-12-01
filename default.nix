{ config, pkgs, ... }:

{
  imports = [
    ./hosts
    ./modules
    ./users
  ];
}
