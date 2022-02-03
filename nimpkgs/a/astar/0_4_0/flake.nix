{
  description = ''A* Pathfinding'';
  inputs.src-astar-0_4_0.flake = false;
  inputs.src-astar-0_4_0.type = "github";
  inputs.src-astar-0_4_0.owner = "Nycto";
  inputs.src-astar-0_4_0.repo = "AStarNim";
  inputs.src-astar-0_4_0.ref = "refs/tags/0.4.0";
  
  
  inputs."binaryheap".url = "path:../../../b/binaryheap";
  inputs."binaryheap".type = "github";
  inputs."binaryheap".owner = "riinr";
  inputs."binaryheap".repo = "flake-nimble";
  inputs."binaryheap".ref = "flake-pinning";
  inputs."binaryheap".dir = "nimpkgs/b/binaryheap";

  outputs = { self, nixpkgs, src-astar-0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-astar-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-astar-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}