{
  description = "Very experimental docker authorization plugin, disabling some trivial ways of gaining root via docker";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, flake-utils, nixpkgs }:
    flake-utils.lib.simpleFlake {
      inherit self nixpkgs;
      name = "docker-no-trivial-root";
      shell = ./shell.nix;
    };
}
