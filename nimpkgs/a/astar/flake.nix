{
  description = ''A* Pathfinding'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."astar-master".type = "github";
  inputs."astar-master".owner = "riinr";
  inputs."astar-master".repo = "flake-nimble";
  inputs."astar-master".ref = "flake-pinning";
  inputs."astar-master".dir = "nimpkgs/a/astar/master";

    inputs."astar-0_2_0".type = "github";
  inputs."astar-0_2_0".owner = "riinr";
  inputs."astar-0_2_0".repo = "flake-nimble";
  inputs."astar-0_2_0".ref = "flake-pinning";
  inputs."astar-0_2_0".dir = "nimpkgs/a/astar/0_2_0";

    inputs."astar-0_3_0".type = "github";
  inputs."astar-0_3_0".owner = "riinr";
  inputs."astar-0_3_0".repo = "flake-nimble";
  inputs."astar-0_3_0".ref = "flake-pinning";
  inputs."astar-0_3_0".dir = "nimpkgs/a/astar/0_3_0";

    inputs."astar-0_4_0".type = "github";
  inputs."astar-0_4_0".owner = "riinr";
  inputs."astar-0_4_0".repo = "flake-nimble";
  inputs."astar-0_4_0".ref = "flake-pinning";
  inputs."astar-0_4_0".dir = "nimpkgs/a/astar/0_4_0";

    inputs."astar-0_6_0".type = "github";
  inputs."astar-0_6_0".owner = "riinr";
  inputs."astar-0_6_0".repo = "flake-nimble";
  inputs."astar-0_6_0".ref = "flake-pinning";
  inputs."astar-0_6_0".dir = "nimpkgs/a/astar/0_6_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}