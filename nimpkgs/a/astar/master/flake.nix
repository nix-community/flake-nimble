{
  description = ''A* Pathfinding'';
  inputs.src-astar-master.flake = false;
  inputs.src-astar-master.type = "github";
  inputs.src-astar-master.owner = "Nycto";
  inputs.src-astar-master.repo = "AStarNim";
  inputs.src-astar-master.ref = "refs/heads/master";
  
  
  inputs."binaryheap".url = "path:../../../b/binaryheap";
  inputs."binaryheap".type = "github";
  inputs."binaryheap".owner = "riinr";
  inputs."binaryheap".repo = "flake-nimble";
  inputs."binaryheap".ref = "flake-pinning";
  inputs."binaryheap".dir = "nimpkgs/b/binaryheap";

  outputs = { self, nixpkgs, src-astar-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-astar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-astar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}