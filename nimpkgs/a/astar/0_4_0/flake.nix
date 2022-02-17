{
  description = ''A* Pathfinding'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-astar-0_4_0.flake = false;
  inputs.src-astar-0_4_0.type = "github";
  inputs.src-astar-0_4_0.owner = "Nycto";
  inputs.src-astar-0_4_0.repo = "AStarNim";
  inputs.src-astar-0_4_0.ref = "refs/tags/0.4.0";
  
  
  inputs."binaryheap".type = "github";
  inputs."binaryheap".owner = "riinr";
  inputs."binaryheap".repo = "flake-nimble";
  inputs."binaryheap".ref = "flake-pinning";
  inputs."binaryheap".dir = "nimpkgs/b/binaryheap";

  outputs = { self, nixpkgs, flakeNimbleLib, src-astar-0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-astar-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-astar-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}