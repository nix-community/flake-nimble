{
  description = ''Tools for working with re-frame ClojureScript projects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."reframe-master".type = "github";
  inputs."reframe-master".owner = "riinr";
  inputs."reframe-master".repo = "flake-nimble";
  inputs."reframe-master".ref = "flake-pinning";
  inputs."reframe-master".dir = "nimpkgs/r/reframe/master";

    inputs."reframe-0_1_0".type = "github";
  inputs."reframe-0_1_0".owner = "riinr";
  inputs."reframe-0_1_0".repo = "flake-nimble";
  inputs."reframe-0_1_0".ref = "flake-pinning";
  inputs."reframe-0_1_0".dir = "nimpkgs/r/reframe/0_1_0";

    inputs."reframe-0_2_0".type = "github";
  inputs."reframe-0_2_0".owner = "riinr";
  inputs."reframe-0_2_0".repo = "flake-nimble";
  inputs."reframe-0_2_0".ref = "flake-pinning";
  inputs."reframe-0_2_0".dir = "nimpkgs/r/reframe/0_2_0";

    inputs."reframe-0_3_0".type = "github";
  inputs."reframe-0_3_0".owner = "riinr";
  inputs."reframe-0_3_0".repo = "flake-nimble";
  inputs."reframe-0_3_0".ref = "flake-pinning";
  inputs."reframe-0_3_0".dir = "nimpkgs/r/reframe/0_3_0";

    inputs."reframe-0_3_1".type = "github";
  inputs."reframe-0_3_1".owner = "riinr";
  inputs."reframe-0_3_1".repo = "flake-nimble";
  inputs."reframe-0_3_1".ref = "flake-pinning";
  inputs."reframe-0_3_1".dir = "nimpkgs/r/reframe/0_3_1";

    inputs."reframe-0_4_0".type = "github";
  inputs."reframe-0_4_0".owner = "riinr";
  inputs."reframe-0_4_0".repo = "flake-nimble";
  inputs."reframe-0_4_0".ref = "flake-pinning";
  inputs."reframe-0_4_0".dir = "nimpkgs/r/reframe/0_4_0";

    inputs."reframe-0_4_1".type = "github";
  inputs."reframe-0_4_1".owner = "riinr";
  inputs."reframe-0_4_1".repo = "flake-nimble";
  inputs."reframe-0_4_1".ref = "flake-pinning";
  inputs."reframe-0_4_1".dir = "nimpkgs/r/reframe/0_4_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}