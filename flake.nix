{
  description = "A TUI for your todos built in Rust with full CLI support.";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = ["x86_64-linux"];
      perSystem = { pkgs, ... }: {
        packages.todui = pkgs.callPackage ./default.nix { };
      };
    };
}
