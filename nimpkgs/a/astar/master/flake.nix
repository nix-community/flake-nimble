{
  description = ''A* Pathfinding'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-astar-master.flake = false;
  inputs.src-astar-master.type = "github";
  inputs.src-astar-master.owner = "Nycto";
  inputs.src-astar-master.repo = "AStarNim";
  inputs.src-astar-master.ref = "refs/heads/master";
  inputs.src-astar-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."binaryheap".type = "github";
  # inputs."binaryheap".owner = "riinr";
  # inputs."binaryheap".repo = "flake-nimble";
  # inputs."binaryheap".ref = "flake-pinning";
  # inputs."binaryheap".dir = "nimpkgs/b/binaryheap";
  # inputs."binaryheap".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."binaryheap".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-astar-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-astar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-astar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}