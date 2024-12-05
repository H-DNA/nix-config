{ pkgs, ... }:

{
  i18n.inputMethod = {
    # enable = true;
    # type = "ibus";
    enabled = "ibus"; # for 24.05
    ibus.engines = with pkgs.ibus-engines; [
      bamboo
    ];
 };
}
