{
  description = ''A Quadtree implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-quadtree-0_1_0.flake = false;
  inputs.src-quadtree-0_1_0.type = "github";
  inputs.src-quadtree-0_1_0.owner = "Nycto";
  inputs.src-quadtree-0_1_0.repo = "QuadtreeNim";
  inputs.src-quadtree-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-quadtree-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."optional_t".type = "github";
  # inputs."optional_t".owner = "riinr";
  # inputs."optional_t".repo = "flake-nimble";
  # inputs."optional_t".ref = "flake-pinning";
  # inputs."optional_t".dir = "nimpkgs/o/optional_t";
  # inputs."optional_t".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."optional_t".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-quadtree-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-quadtree-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-quadtree-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}