{
  description = "Nimble packages";

  outputs = { self, nixpkgs }:
    let inherit (nixpkgs) lib;
    in {
      overlay = import ./overlay.nix;
      # Define packages here using an overlay.
      # This simplifies cross-compilation.

      legacyPackages =
        lib.attrsets.mapAttrs (system: pkgs: pkgs.extend self.overlay)
        nixpkgs.legacyPackages;

      packages =
        # Expose the packages added via the overlay.
        lib.attrsets.mapAttrs (system: pkgs:
          (lib.attrsets.filterAttrs (name: lib.attrsets.isDerivation))
          pkgs.nimPackages) self.legacyPackages;

      defaultPackage = lib.attrsets.mapAttrs (system: builtins.getAttr "nim")
        self.legacyPackages;
      # Make the Nim compiler from Nixpkgs the default package here.
    };
}
