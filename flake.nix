{
  edition = 201909;

  description = "Nimble packages";

  inputs.nixpkgs.uri = "git+https://github.com/edolstra/nixpkgs";

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" ];

      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f system);

    in {
      packages = forAllSystems (system:
        import ./default.nix {
          nixpkgs = builtins.getAttr system nixpkgs.legacyPackages;
        });

      defaultPackage = forAllSystems (system: self.packages."${system}".nim);

      dev-shell = forAllSystems (system:
        let
          thisSystem = builtins.getAttr system;
          legacyPackages = thisSystem nixpkgs.legacyPackages;
          selfPackages = thisSystem self.packages;
        in with legacyPackages;
        mkShell {
          buildInputs =
            [ selfPackages.nim gnumake nix-prefetch-git nix-prefetch-hg ];
        });
    };
}
