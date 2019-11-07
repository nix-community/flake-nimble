{
  edition = 201909;

  description = "Nimble packages";

  inputs = { nixpkgs.uri = "git+https://github.com/edolstra/nixpkgs.git"; };

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" ];

      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f system);

    in {
      packages = forAllSystems (system:
        import ./default.nix { nixpkgs = import nixpkgs { inherit system; }; });

      defaultPackage = forAllSystems (system: self.packages."${system}".nim);
    };
}
