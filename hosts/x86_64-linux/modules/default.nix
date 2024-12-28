{ pkgs, other-pkgs, ... }: {
  imports = [
    ./users
  ];

  environment.systemPackages = with pkgs; [
    other-pkgs.ghostty.packages.x86_64-linux.default
  ];
}
