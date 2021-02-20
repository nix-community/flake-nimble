{
  description = "Nimble packages";

  outputs = { self, nixpkgs }:
    let
      systems = [ "aarch64-linux" "x86_64-linux" ];

      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f system);

      nixpkgsFor = forAllSystems (system:
        import nixpkgs {
          inherit system;
          overlays = [ self.overlay ];
        });

    in {
      overlay = import ./overlay.nix;
      # Define packages here using an overlay.
      # This simplifies cross-compilation.

      packages = forAllSystems (system: nixpkgsFor.${system}.nimblePackages);
      # Expose the packages added via the overlay.

      defaultPackage = forAllSystems (system: nixpkgsFor.${system}.nim);
      # Make the Nim compiler from Nixpkgs the default package here.
    };
}
