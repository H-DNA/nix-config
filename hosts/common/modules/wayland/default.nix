{ pkgs, ... }:

{
  # Window system
  programs.sway.enable = true;
  xdg.portal.wlr.enable = true;

  environment.systemPackages = with pkgs; [
    swaylock
    swayidle
    swaybg
    wofi
    grim
    brightnessctl
    waybar
    i3blocks
  ];

  # No need if enable wayland but just add it here
  services.libinput.enable = true;
}
