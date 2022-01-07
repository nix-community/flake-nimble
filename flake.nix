{
  description = "Nimble packages";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/release-21.11";

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
        lib.attrsets.mapAttrs
        (system: pkgs: removeAttrs pkgs.nimblePackages [ "extend" "__unfix__" ])
        self.legacyPackages;

      defaultPackage = lib.attrsets.mapAttrs (system: builtins.getAttr "nim")
        self.legacyPackages;
      # Make the Nim compiler from Nixpkgs the default package here.
    };
}
