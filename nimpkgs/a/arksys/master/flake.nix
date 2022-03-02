{
  description = ''An entity component system package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-arksys-master.flake = false;
  inputs.src-arksys-master.type = "github";
  inputs.src-arksys-master.owner = "wolfadex";
  inputs.src-arksys-master.repo = "arksys";
  inputs.src-arksys-master.ref = "refs/heads/master";
  inputs.src-arksys-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-arksys-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arksys-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-arksys-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}