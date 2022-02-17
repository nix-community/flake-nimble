let
  systems = [ "aarch64-linux" "x86_64-linux" ];
  mkProjectOutput = { self, nixpkgs, refs, meta }:
  {
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
