{ pkgs, ... }:

{ 
  imports = [
    ./users
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
