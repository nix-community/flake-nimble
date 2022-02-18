{
  description = ''A sinatra-like web framework for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."jester-master".type = "github";
  inputs."jester-master".owner = "riinr";
  inputs."jester-master".repo = "flake-nimble";
  inputs."jester-master".ref = "flake-pinning";
  inputs."jester-master".dir = "nimpkgs/j/jester/master";

    inputs."jester-v0_1_0".type = "github";
  inputs."jester-v0_1_0".owner = "riinr";
  inputs."jester-v0_1_0".repo = "flake-nimble";
  inputs."jester-v0_1_0".ref = "flake-pinning";
  inputs."jester-v0_1_0".dir = "nimpkgs/j/jester/v0_1_0";

    inputs."jester-v0_1_1".type = "github";
  inputs."jester-v0_1_1".owner = "riinr";
  inputs."jester-v0_1_1".repo = "flake-nimble";
  inputs."jester-v0_1_1".ref = "flake-pinning";
  inputs."jester-v0_1_1".dir = "nimpkgs/j/jester/v0_1_1";

    inputs."jester-v0_2_0".type = "github";
  inputs."jester-v0_2_0".owner = "riinr";
  inputs."jester-v0_2_0".repo = "flake-nimble";
  inputs."jester-v0_2_0".ref = "flake-pinning";
  inputs."jester-v0_2_0".dir = "nimpkgs/j/jester/v0_2_0";

    inputs."jester-v0_2_1".type = "github";
  inputs."jester-v0_2_1".owner = "riinr";
  inputs."jester-v0_2_1".repo = "flake-nimble";
  inputs."jester-v0_2_1".ref = "flake-pinning";
  inputs."jester-v0_2_1".dir = "nimpkgs/j/jester/v0_2_1";

    inputs."jester-v0_3_0".type = "github";
  inputs."jester-v0_3_0".owner = "riinr";
  inputs."jester-v0_3_0".repo = "flake-nimble";
  inputs."jester-v0_3_0".ref = "flake-pinning";
  inputs."jester-v0_3_0".dir = "nimpkgs/j/jester/v0_3_0";

    inputs."jester-v0_4_0".type = "github";
  inputs."jester-v0_4_0".owner = "riinr";
  inputs."jester-v0_4_0".repo = "flake-nimble";
  inputs."jester-v0_4_0".ref = "flake-pinning";
  inputs."jester-v0_4_0".dir = "nimpkgs/j/jester/v0_4_0";

    inputs."jester-v0_4_1".type = "github";
  inputs."jester-v0_4_1".owner = "riinr";
  inputs."jester-v0_4_1".repo = "flake-nimble";
  inputs."jester-v0_4_1".ref = "flake-pinning";
  inputs."jester-v0_4_1".dir = "nimpkgs/j/jester/v0_4_1";

    inputs."jester-v0_4_2".type = "github";
  inputs."jester-v0_4_2".owner = "riinr";
  inputs."jester-v0_4_2".repo = "flake-nimble";
  inputs."jester-v0_4_2".ref = "flake-pinning";
  inputs."jester-v0_4_2".dir = "nimpkgs/j/jester/v0_4_2";

    inputs."jester-v0_4_3".type = "github";
  inputs."jester-v0_4_3".owner = "riinr";
  inputs."jester-v0_4_3".repo = "flake-nimble";
  inputs."jester-v0_4_3".ref = "flake-pinning";
  inputs."jester-v0_4_3".dir = "nimpkgs/j/jester/v0_4_3";

    inputs."jester-v0_5_0".type = "github";
  inputs."jester-v0_5_0".owner = "riinr";
  inputs."jester-v0_5_0".repo = "flake-nimble";
  inputs."jester-v0_5_0".ref = "flake-pinning";
  inputs."jester-v0_5_0".dir = "nimpkgs/j/jester/v0_5_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}