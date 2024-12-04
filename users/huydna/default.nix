{ pkgs, ... }:

{
  home-manager.users.huydna = {
    programs.zoxide.enable = true;
    programs.zoxide.enableZshIntegration = true;
    fonts.fontconfig.enable = true;
    home.stateVersion = "24.05";
  };

  nixpkgs.config.allowUnfree = true; 

  users.users.huydna = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    packages = with pkgs; [
      firefox
      tree
      discord
      ruby
      bun
      nodejs_22
      rustup
      deno
      go
      clang
      erlang_27
      vscode-extensions.vue.volar
      vscode-extensions.vue.vscode-typescript-vue-plugin
      nodePackages_latest.eslint
      typescript
      obsidian
      hbase
    ];
    shell = pkgs.zsh;
  };
}
