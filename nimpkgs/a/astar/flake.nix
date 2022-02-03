{
  description = ''A* Pathfinding'';
  inputs."astar-master".url = "path:./master";
  inputs."astar-0_2_0".url = "path:./0_2_0";
  inputs."astar-0_3_0".url = "path:./0_3_0";
  inputs."astar-0_4_0".url = "path:./0_4_0";
  inputs."astar-0_6_0".url = "path:./0_6_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}