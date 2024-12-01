{ pkgs, ... }:

{
  fonts.fontDir.enable = true;

  environment.systemPackages = [
    pkgs.nerd-fonts.jetbrains-mono
  ];
}
