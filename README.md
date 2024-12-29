# Nix configuration

## Common configs

All the common configs, which are shared by all hosts, are placed inside `/hosts/common/`. The result of evaluating [`/hosts/common/default.nix`](/hosts/common/default.nix) is merged into all host configs.

## Host configs

- Each host is listed as an entry in the `hosts` attribute set defined in the [`/flake.nix`](/flake.nix) file.
- Each host config is stored inside a folder `/hosts/[host]` and is the result of evaluating `/hosts/[host]/default.nix` merged with the common configs. 

- To add a host profile `[host]`:
  1. Add `[host]` to the `hosts` attribute set in the root [`/flake.nix`](/flake.nix) file.
  2. Add a config folder for `[host]` in [`/hosts/`](/hosts/) and a default file inside [`/hosts/`](/hosts/default.nix).
  3. Add specific config for that host in [`/hosts/default.nix`](/hosts/default.nix).

## Default

- By default, there's a default user whose name is defined by `default-username` in [`/flake.nix`](/flake.nix).
- This default user has a default config in [`/hosts/common/modules/users/default.nix`](/hosts/common/modules/users/default.nix). This can be overridden per host.

## Resolving problems

- If fonts aren't loaded, run `fc-cache -f -v`.
