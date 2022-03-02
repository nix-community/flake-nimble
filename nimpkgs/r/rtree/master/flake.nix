{
  description = ''R-Tree'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-rtree-master.flake = false;
  inputs.src-rtree-master.type = "github";
  inputs.src-rtree-master.owner = "stefansalewski";
  inputs.src-rtree-master.repo = "RTree";
  inputs.src-rtree-master.ref = "refs/heads/master";
  inputs.src-rtree-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rtree-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rtree-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rtree-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}