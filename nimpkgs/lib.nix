let
  systems = [ "aarch64-linux" "x86_64-linux" ];
  mkProjectOutput = { self, nixpkgs, refs, meta }:
  let 
    lib = nixpkgs.lib;
    buildNimPackage = nixpkgs.legacyPackages.x86_64-linux;
    lowerName = lib.toLower meta.name; 
    defaultPackage = 
      refs."${lowerName}-master" or 
      refs."${lowerName}-main" or 
      refs."${lowerName}-unstable" or 
      refs."${lowerName}-develop" or
      (builtins.trace (builtins.attrNames refs) null);
  in {
    defaultPackage.x86_64-linux = defaultPackage.defaultPackage.x86_64-linux;
    packages.x86_64-linux = builtins.mapAttrs (name: value: value.defaultPackage.x86_64-linux) refs;
    inherit meta;
  };
  mkRefOutput = { self, nixpkgs, src, deps, meta }:
  let 
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {
    defaultPackage.x86_64-linux = pkgs.nimPackages.buildNimPackage {
      inherit src;
      pname = meta.name;
      meta.description = meta.desc or meta.description or "nim package ${meta.name}";
      version = meta.version or (builtins.replaceStr ["refs/.+/(vV)*"] [""] meta.ref);
    };
    meta = meta;
  };
  mkMainOutput = { self, nixpkgs, inputs }: {
    lib = {
      inherit mkProjectOutput mkRefOutput systems;
    };
  };
in {
  inherit mkMainOutput mkProjectOutput mkRefOutput systems;
}
