{ pkgs, ... }:

{
  hardware.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  boot.extraModprobeConfig = ''
    options snd-intel-dspcfg dsp_driver=1
  '';

  environment.systemPackages = with pkgs; [
    sof-firmware
  ];
}
