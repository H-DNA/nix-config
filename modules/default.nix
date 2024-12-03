{ pkgs, ... }:

{
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
    docker_27
    uv
    curl
    racket
    python3
    lua-language-server
    marksman
  ];

  imports = [
    ./fonts
    ./git
    ./gui
    ./hardware
    ./fcitx
    ./services
    ./zsh
  ];
}
