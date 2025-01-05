{ default-username, pkgs, ... }:

{
  users.users.${default-username} = {
    packages = with pkgs; [
      obs-studio
      tree
      discord
      ruby
      bun
      nodejs_22
      rustup
      deno
      go
      clang
      clang-tools
      erlang_27
      vscode-extensions.vue.volar
      vscode-extensions.vue.vscode-typescript-vue-plugin
      nodePackages_latest.eslint
      typescript
      obsidian
      lua-language-server
      jdt-language-server
      marksman
      racket
      postgresql_16
      docker_26
      jdk
      php
      apacheHttpd
      mysql84
      typst
      tinymist
      typstyle
    ];
  };
}
