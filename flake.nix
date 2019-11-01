{
  edition = 201909;

  description = "Nimble packages";

  inputs.nixpkgs = {
    uri = "git+https://github.com/nixos/nixpkgs.git";
    flake = false;
  };

  outputs = { self, nixpkgs }:
    with (import nixpkgs { system = "x86_64-linux"; });
    let
      nimbleDerivation = args:
      stdenv.mkDerivation {
        inherit (args) name meta;
        src = fetchgit {
          inherit (args.src) url;
          rev = "master";
          sha256 = lib.fakeSha256;
        };
      };

      importPackage = path:
        let args = import path;
        in {
          inherit (args) name;
          value = nimbleDerivation args;
        };

      pkgsPaths = import ./packages;
      pkgsList = map importPackage pkgsPaths;
    in { packages = builtins.listToAttrs pkgsList; };
}
