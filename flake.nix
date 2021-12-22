{
  description = "Nimble packages";

  outputs = { self, nixpkgs }:
    let
      systems = [ "aarch64-linux" "x86_64-linux" "x86_64-darwin" ];

      forAllSystems = nixpkgs.lib.genAttrs systems;

      nixpkgsFor = forAllSystems (system:
        import nixpkgs {
          inherit system;
          overlays = [ self.overlay ];
        });

    in {
      overlay = import ./overlay.nix;
      # Define packages here using an overlay.
      # This simplifies cross-compilation.

      packages =
        # Expose the packages added via the overlay.
        forAllSystems (system:
          removeAttrs nixpkgsFor.${system}.nimblePackages [
            "extend"
            "__unfix__"
          ]);

      defaultPackage = forAllSystems (system: nixpkgsFor.${system}.nim);
      # Make the Nim compiler from Nixpkgs the default package here.
    };
}
