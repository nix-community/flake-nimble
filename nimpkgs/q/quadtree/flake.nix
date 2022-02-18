{
  description = ''A Quadtree implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."quadtree-master".type = "github";
  inputs."quadtree-master".owner = "riinr";
  inputs."quadtree-master".repo = "flake-nimble";
  inputs."quadtree-master".ref = "flake-pinning";
  inputs."quadtree-master".dir = "nimpkgs/q/quadtree/master";

    inputs."quadtree-0_1_0".type = "github";
  inputs."quadtree-0_1_0".owner = "riinr";
  inputs."quadtree-0_1_0".repo = "flake-nimble";
  inputs."quadtree-0_1_0".ref = "flake-pinning";
  inputs."quadtree-0_1_0".dir = "nimpkgs/q/quadtree/0_1_0";

    inputs."quadtree-0_2_0".type = "github";
  inputs."quadtree-0_2_0".owner = "riinr";
  inputs."quadtree-0_2_0".repo = "flake-nimble";
  inputs."quadtree-0_2_0".ref = "flake-pinning";
  inputs."quadtree-0_2_0".dir = "nimpkgs/q/quadtree/0_2_0";

    inputs."quadtree-0_3_0".type = "github";
  inputs."quadtree-0_3_0".owner = "riinr";
  inputs."quadtree-0_3_0".repo = "flake-nimble";
  inputs."quadtree-0_3_0".ref = "flake-pinning";
  inputs."quadtree-0_3_0".dir = "nimpkgs/q/quadtree/0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}