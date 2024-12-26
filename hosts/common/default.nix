{ hostname, arch, pkgs, ... }:

{
  # Enable flake
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Timezone & Locale
  time.timeZone = "Asia/Ho_Chi_Minh";
  i18n.defaultLocale = "en_US.UTF-8";

  # Console font
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };
  
  # Hostname
  networking.hostName = hostname;

  # Common packages
  nixpkgs.config.allowUnfree = true; 

  environment.systemPackages = with pkgs; [
    vim
    jump
    neovim
    kitty
    tmux
    wget
    gcc
    stow
    gnumake
    fzf
    ripgrep
    uv
    curl
    python3
    firefox
    unzip
    xdg-utils
    bat
    zoxide
    cmake
    wayland-scanner
  ];

  imports = [
    ./modules
  ];

  system.stateVersion = "25.05";
}
