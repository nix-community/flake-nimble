{
  edition = 201909;

  description = "Nimble packages";

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" ];

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
      overlay =
        import ./overlay { nimbleSrc = self.packages.x86_64.nimble.src; };

      packages = forAllSystems (system: nixpkgsFor.${system}.nimblePackages);

      defaultPackage = forAllSystems (system: self.packages.${system}.nimble);

      apps = forAllSystems (system:
        let
          appThunks = with builtins;
            let
              pkgs = self.packages.${system};
              f = name: {
                inherit name;
                value = let drv = getAttr name pkgs;
                in if drv.nimble.bin == [ ] then
                  null
                else
                  mkApp { inherit name drv; };
              };
              pkgNames = attrNames pkgs;
              mapped = map f pkgNames;
            in listToAttrs mapped;
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
