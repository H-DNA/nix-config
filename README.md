# nix-config

- To add a host profile `h`:
  1. Add `h` to the `hosts` attribute sets in `flake.nix`.
  2. Add a folder named `h` in `/hosts/` and add configs for that host.
  
  All configs of a `host` are merged by its own configs and the `/hosts/common/` config.

- By default, there's a default user whose name is defined in `flake.nix`. This default user has a default config in `/hosts/common/modules/users/default.nix`. This can be overridden per host.

## Encountered problems

- If fonts aren't loaded, run `fc-cache -f -v`.
