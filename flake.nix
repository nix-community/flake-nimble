{
  description = "Nimble packages";

  outputs = { self, nixpkgs }:
    let
      systems = [  "aarch64-linux" "x86_64-linux" ];

      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f system);

      # Memoize nixpkgs for different platforms for efficiency.
      nixpkgsFor = forAllSystems (system:
        import nixpkgs {
          inherit system;
          overlays = [ self.overlay ];
        });

      mkApp = { drv, name ? drv.pname or drv.name, exePath ? "/bin/${name}" }: {
        type = "app";
        program = "${drv}${exePath}";
      };

    in {
      overlay = import ./overlay;
      # Define packages here using an overlay.
      # This simplifies cross-compilation.

      packages = forAllSystems (system: nixpkgsFor.${system}.nimblePackages);
      # Expose the packages added via the overlay.

      defaultPackage = forAllSystems (system: nixpkgsFor.${system}.nim);
      # Make the Nim compiler from Nixpkgs the default package here.

      apps = forAllSystems (system:
        let
          appThunks = with builtins;
            let
              pkgs = self.packages.${system};
              f = name: {
                inherit name;
                value = mkApp {
                  inherit name;
                  drv = getAttr name pkgs;
                };
              };
              pkgNames = attrNames pkgs;
              mapped = map f pkgNames;
            in listToAttrs (filter ({ name, value }: value != null) mapped);
        in appThunks // {
          nim = mkApp {
            name = "nim";
            drv = nixpkgsFor.${system}.nim;
          };
          nimble = mkApp {
            name = "nimble";
            drv = nixpkgsFor.${system}.nim;
          };
        });

      devShell = forAllSystems (system:
        let
          thisSystem = builtins.getAttr system;
          nixpkgs = nixpkgsFor.${system};
          selfPackages = thisSystem self.packages;
        in with nixpkgs;
        mkShell {
          buildInputs =
            [ selfPackages.nim gnumake nix-prefetch-git nix-prefetch-hg ];
        });
    };
}
