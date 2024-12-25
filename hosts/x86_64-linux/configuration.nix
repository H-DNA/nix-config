# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, pkgs, lib, ... }:
{
  # Enable flake
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Hostname
  networking.hostName = "hell";

  # Enable network manager
  networking.networkmanager.enable = true;

  # Timezone & Locale
  time.timeZone = "Asia/Ho_Chi_Minh";
  i18n.defaultLocale = "en_US.UTF-8";

  # Console font
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };
 
  system.stateVersion = "25.05";

  # User
  imports = [
    ../../common
  ];

  home-manager.users.huydna = {
    imports = config.home-manager.sharedModules;
    programs.zoxide.enable = true;
    programs.zoxide.enableZshIntegration = true;
    fonts.fontconfig.enable = true;
    home = {
      stateVersion = "25.05";
      username = "huydna";
    };
  };

  users.users.huydna = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "video" ];
    packages = with pkgs; [
      obs-studio
      tree
      discord
      ruby
      bun
      nodejs_22
      rustup
      deno
      go
      clang
      erlang_27
      vscode-extensions.vue.volar
      vscode-extensions.vue.vscode-typescript-vue-plugin
      nodePackages_latest.eslint
      typescript
      obsidian
    ];
    shell = pkgs.zsh;
  };
}
