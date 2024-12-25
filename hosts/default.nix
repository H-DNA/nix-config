{ hostname, arch, nixpkgs, ... }:

{
  imports = [
    ./common
    ./${arch}
  ];
}
