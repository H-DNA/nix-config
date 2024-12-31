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
  ];

  # Desktop environment
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.gdm.wayland = true;

  # No need if enable wayland but just add it here
  services.libinput.enable = true;
}
