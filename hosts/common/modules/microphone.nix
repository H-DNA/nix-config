{ pkgs, ... }:

{
  boot.extraModprobeConfig = ''
    options snd-intel-dspcfg dsp_driver=1
  '';

  environment.systemPackages = with pkgs; [
    sof-firmware
  ];
}
