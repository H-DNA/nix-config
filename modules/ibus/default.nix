{ pkgs, ... }:

{
  i18n.inputMethod.type = "ibus";
  i18n.inputMethod.ibus.engines = [
    pkgs.ibus-engines.bamboo
  ];
}
