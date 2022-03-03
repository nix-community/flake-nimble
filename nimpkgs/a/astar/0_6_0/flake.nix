{
  description = ''A* Pathfinding'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-astar-0_6_0.flake = false;
  inputs.src-astar-0_6_0.type = "github";
  inputs.src-astar-0_6_0.owner = "Nycto";
  inputs.src-astar-0_6_0.repo = "AStarNim";
  inputs.src-astar-0_6_0.ref = "refs/tags/0.6.0";
  inputs.src-astar-0_6_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."binaryheap".type = "github";
  # inputs."binaryheap".owner = "riinr";
  # inputs."binaryheap".repo = "flake-nimble";
  # inputs."binaryheap".ref = "flake-pinning";
  # inputs."binaryheap".dir = "nimpkgs/b/binaryheap";
  # inputs."binaryheap".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."binaryheap".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-astar-0_6_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-astar-0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-astar-0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}