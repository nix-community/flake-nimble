{
  edition = 201909;

  description = "Nimble packages";

  outputs = { self, nixpkgs }:
    let
      localSystems = [ "x86_64-linux" ];
      crossSystems = [ "x86_64-genode" ];

      forAllLocalSystems = f:
        nixpkgs.lib.genAttrs localSystems (system:
          f {
            inherit system;
            localSystem = system;
            crossSystem = system;
          });

      forAllCrossSystems = f:
        with builtins;
        let
          f' = localSystem: crossSystem:
            let system = localSystem + "-" + crossSystem;
            in {
              name = system;
              value = f { inherit system localSystem crossSystem; };
            };
          list = nixpkgs.lib.lists.crossLists f' [ localSystems crossSystems ];
        in listToAttrs list;

      forAllSystems = f: (forAllLocalSystems f) // (forAllCrossSystems f);

      mkApp = { drv, name ? drv.pname or drv.name, exePath ? "/bin/${name}" }: {
        type = "app";
        program = "${drv}${exePath}";
      };

    in {
      packages = forAllSystems ({ system, localSystem, crossSystem }:
        let
          pkgs = import ./default.nix {
            buildPackages = self.packages.${localSystem};
            nixpkgs = nixpkgs.legacyPackages.${system};
          };
          blacklist = import ./blacklist.nix;
        in removeAttrs pkgs blacklist);

      defaultPackage =
        forAllSystems ({ system, ... }: self.packages.${system}.nimble);

      apps = forAllSystems ({ system, ... }:
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
            drv = self.packages.${system}.nim;
          };
          nimble = mkApp {
            name = "nim";
            drv = self.packages.${system}.nimble;
          };
        });

      defaultApp =
        forAllLocalSystems ({ system, ... }: self.apps."${system}".nimble);

      devShell = forAllLocalSystems ({ system, ... }:
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
