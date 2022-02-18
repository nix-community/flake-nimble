{
  description = ''A tool for managing a project's changelog'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."changer-master".type = "github";
  inputs."changer-master".owner = "riinr";
  inputs."changer-master".repo = "flake-nimble";
  inputs."changer-master".ref = "flake-pinning";
  inputs."changer-master".dir = "nimpkgs/c/changer/master";

    inputs."changer-v0_1_1".type = "github";
  inputs."changer-v0_1_1".owner = "riinr";
  inputs."changer-v0_1_1".repo = "flake-nimble";
  inputs."changer-v0_1_1".ref = "flake-pinning";
  inputs."changer-v0_1_1".dir = "nimpkgs/c/changer/v0_1_1";

    inputs."changer-v0_2_0".type = "github";
  inputs."changer-v0_2_0".owner = "riinr";
  inputs."changer-v0_2_0".repo = "flake-nimble";
  inputs."changer-v0_2_0".ref = "flake-pinning";
  inputs."changer-v0_2_0".dir = "nimpkgs/c/changer/v0_2_0";

    inputs."changer-v0_3_0".type = "github";
  inputs."changer-v0_3_0".owner = "riinr";
  inputs."changer-v0_3_0".repo = "flake-nimble";
  inputs."changer-v0_3_0".ref = "flake-pinning";
  inputs."changer-v0_3_0".dir = "nimpkgs/c/changer/v0_3_0";

    inputs."changer-v0_4_0".type = "github";
  inputs."changer-v0_4_0".owner = "riinr";
  inputs."changer-v0_4_0".repo = "flake-nimble";
  inputs."changer-v0_4_0".ref = "flake-pinning";
  inputs."changer-v0_4_0".dir = "nimpkgs/c/changer/v0_4_0";

    inputs."changer-v0_4_1".type = "github";
  inputs."changer-v0_4_1".owner = "riinr";
  inputs."changer-v0_4_1".repo = "flake-nimble";
  inputs."changer-v0_4_1".ref = "flake-pinning";
  inputs."changer-v0_4_1".dir = "nimpkgs/c/changer/v0_4_1";

    inputs."changer-v0_4_2".type = "github";
  inputs."changer-v0_4_2".owner = "riinr";
  inputs."changer-v0_4_2".repo = "flake-nimble";
  inputs."changer-v0_4_2".ref = "flake-pinning";
  inputs."changer-v0_4_2".dir = "nimpkgs/c/changer/v0_4_2";

    inputs."changer-v0_5_0".type = "github";
  inputs."changer-v0_5_0".owner = "riinr";
  inputs."changer-v0_5_0".repo = "flake-nimble";
  inputs."changer-v0_5_0".ref = "flake-pinning";
  inputs."changer-v0_5_0".dir = "nimpkgs/c/changer/v0_5_0";

    inputs."changer-v0_6_0".type = "github";
  inputs."changer-v0_6_0".owner = "riinr";
  inputs."changer-v0_6_0".repo = "flake-nimble";
  inputs."changer-v0_6_0".ref = "flake-pinning";
  inputs."changer-v0_6_0".dir = "nimpkgs/c/changer/v0_6_0";

    inputs."changer-v0_6_1".type = "github";
  inputs."changer-v0_6_1".owner = "riinr";
  inputs."changer-v0_6_1".repo = "flake-nimble";
  inputs."changer-v0_6_1".ref = "flake-pinning";
  inputs."changer-v0_6_1".dir = "nimpkgs/c/changer/v0_6_1";

    inputs."changer-v0_6_2".type = "github";
  inputs."changer-v0_6_2".owner = "riinr";
  inputs."changer-v0_6_2".repo = "flake-nimble";
  inputs."changer-v0_6_2".ref = "flake-pinning";
  inputs."changer-v0_6_2".dir = "nimpkgs/c/changer/v0_6_2";

    inputs."changer-v0_7_0".type = "github";
  inputs."changer-v0_7_0".owner = "riinr";
  inputs."changer-v0_7_0".repo = "flake-nimble";
  inputs."changer-v0_7_0".ref = "flake-pinning";
  inputs."changer-v0_7_0".dir = "nimpkgs/c/changer/v0_7_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}