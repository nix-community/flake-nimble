{
  description = ''Library for finding the differences between two sequences'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."diff-master".type = "github";
  inputs."diff-master".owner = "riinr";
  inputs."diff-master".repo = "flake-nimble";
  inputs."diff-master".ref = "flake-pinning";
  inputs."diff-master".dir = "nimpkgs/d/diff/master";

    inputs."diff-0_1_0".type = "github";
  inputs."diff-0_1_0".owner = "riinr";
  inputs."diff-0_1_0".repo = "flake-nimble";
  inputs."diff-0_1_0".ref = "flake-pinning";
  inputs."diff-0_1_0".dir = "nimpkgs/d/diff/0_1_0";

    inputs."diff-0_2_0".type = "github";
  inputs."diff-0_2_0".owner = "riinr";
  inputs."diff-0_2_0".repo = "flake-nimble";
  inputs."diff-0_2_0".ref = "flake-pinning";
  inputs."diff-0_2_0".dir = "nimpkgs/d/diff/0_2_0";

    inputs."diff-0_2_1".type = "github";
  inputs."diff-0_2_1".owner = "riinr";
  inputs."diff-0_2_1".repo = "flake-nimble";
  inputs."diff-0_2_1".ref = "flake-pinning";
  inputs."diff-0_2_1".dir = "nimpkgs/d/diff/0_2_1";

    inputs."diff-0_3_0".type = "github";
  inputs."diff-0_3_0".owner = "riinr";
  inputs."diff-0_3_0".repo = "flake-nimble";
  inputs."diff-0_3_0".ref = "flake-pinning";
  inputs."diff-0_3_0".dir = "nimpkgs/d/diff/0_3_0";

    inputs."diff-0_4_0".type = "github";
  inputs."diff-0_4_0".owner = "riinr";
  inputs."diff-0_4_0".repo = "flake-nimble";
  inputs."diff-0_4_0".ref = "flake-pinning";
  inputs."diff-0_4_0".dir = "nimpkgs/d/diff/0_4_0";

    inputs."diff-0_5_0".type = "github";
  inputs."diff-0_5_0".owner = "riinr";
  inputs."diff-0_5_0".repo = "flake-nimble";
  inputs."diff-0_5_0".ref = "flake-pinning";
  inputs."diff-0_5_0".dir = "nimpkgs/d/diff/0_5_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}