{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true; 

  environment.systemPackages = with pkgs; [
    vim
    gh
    jump
    neovim
    alacritty
    kitty
    tmux
    wget
    gcc
    stow
    gnumake
    fzf
    ripgrep
    postgresql_16
    docker_26
    uv
    curl
    racket
    python3
    lua-language-server
    marksman
    firefox
    unzip
    xdg-utils
    bat
  ];

  imports = [
    ./fonts
    ./git.nix
    ./wayland
    ./speaker.nix
    ./microphone.nix
    ./ibus.nix
    ./ssh.nix
    ./zsh.nix
  ];
}
