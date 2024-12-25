{ default-username, lib, pkgs, ... }:

{
  users.users.${default-username} = {
    home = "/home/${default-username}";
    isNormalUser = true;
    extraGroups = lib.mkDefault [ "wheel" "networkmanager" "video" ];
    shell = pkgs.zsh;
  };
}
