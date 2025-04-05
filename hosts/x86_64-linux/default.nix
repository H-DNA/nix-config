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
  networking.firewall.allowedTCPPorts = [ 2377 7946 4789 ];
  networking.firewall.allowedUDPPorts = [ 2377 7946 4789 ];

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;

  imports = [
    ./hardware-configuration.nix
    ./modules
  ];
}
