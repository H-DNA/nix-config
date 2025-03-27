{ ... }:

{
  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Enable network manager
  networking.networkmanager.enable = true;
  services.zerotierone = {
    enable = true;
    joinNetworks = [
      "56374ac9a461dade"
    ];
  };

  imports = [
    ./hardware-configuration.nix
    ./modules
  ];
}
