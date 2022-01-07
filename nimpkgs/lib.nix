let
  systems = [ "aarch64-linux" "x86_64-linux" ];

in {
  mkMainOutput = { self, nixpkgs ? null, ...}@inputs: {
    defaultPackage = forAllSystems (system: nixpkgsFor.${system}.nim);
  };
  mkOutput = { self, meta, nixpkgs ? null, ...}@inputs:
  let 
    forAllSystems = nixpkgs.lib.genAttrs systems;
    toNimDrv = system: {
      "${meta.name}" = nixpkgs.legacyPackages.${system}.buildNimPackage {
        pname = meta.name;
        version = "lastest";
        src = input."src-${meta.name}";
        doCheck = false;
      };
    };
  in forAllSystems toNimDrv;
}
