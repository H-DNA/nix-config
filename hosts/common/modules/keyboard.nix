{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    xorg.xkbcomp
    xorg.xev
  ];
}
