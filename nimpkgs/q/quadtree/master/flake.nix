{
  description = ''A Quadtree implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-quadtree-master.flake = false;
  inputs.src-quadtree-master.type = "github";
  inputs.src-quadtree-master.owner = "Nycto";
  inputs.src-quadtree-master.repo = "QuadtreeNim";
  inputs.src-quadtree-master.ref = "refs/heads/master";
  inputs.src-quadtree-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-quadtree-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-quadtree-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-quadtree-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}