{
  description = ''2D Delaunay triangulations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."delaunay-master".type = "github";
  inputs."delaunay-master".owner = "riinr";
  inputs."delaunay-master".repo = "flake-nimble";
  inputs."delaunay-master".ref = "flake-pinning";
  inputs."delaunay-master".dir = "nimpkgs/d/delaunay/master";

    inputs."delaunay-0_2_0".type = "github";
  inputs."delaunay-0_2_0".owner = "riinr";
  inputs."delaunay-0_2_0".repo = "flake-nimble";
  inputs."delaunay-0_2_0".ref = "flake-pinning";
  inputs."delaunay-0_2_0".dir = "nimpkgs/d/delaunay/0_2_0";

    inputs."delaunay-0_3_0".type = "github";
  inputs."delaunay-0_3_0".owner = "riinr";
  inputs."delaunay-0_3_0".repo = "flake-nimble";
  inputs."delaunay-0_3_0".ref = "flake-pinning";
  inputs."delaunay-0_3_0".dir = "nimpkgs/d/delaunay/0_3_0";

    inputs."delaunay-0_3_1".type = "github";
  inputs."delaunay-0_3_1".owner = "riinr";
  inputs."delaunay-0_3_1".repo = "flake-nimble";
  inputs."delaunay-0_3_1".ref = "flake-pinning";
  inputs."delaunay-0_3_1".dir = "nimpkgs/d/delaunay/0_3_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}