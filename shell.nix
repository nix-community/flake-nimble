{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell
  { buildInputs = with pkgs;
      [ nim
        nix-prefetch-git
        nix-prefetch-hg
      ];
  }
