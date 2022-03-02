{
  description = ''2D Delaunay triangulations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-delaunay-master.flake = false;
  inputs.src-delaunay-master.type = "github";
  inputs.src-delaunay-master.owner = "Nycto";
  inputs.src-delaunay-master.repo = "DelaunayNim";
  inputs.src-delaunay-master.ref = "refs/heads/master";
  inputs.src-delaunay-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-delaunay-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-delaunay-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-delaunay-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}