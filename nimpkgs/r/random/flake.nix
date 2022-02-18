{
  description = ''Pseudo-random number generation library inspired by Python'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."random-master".type = "github";
  inputs."random-master".owner = "riinr";
  inputs."random-master".repo = "flake-nimble";
  inputs."random-master".ref = "flake-pinning";
  inputs."random-master".dir = "nimpkgs/r/random/master";

    inputs."random-v0_2_4".type = "github";
  inputs."random-v0_2_4".owner = "riinr";
  inputs."random-v0_2_4".repo = "flake-nimble";
  inputs."random-v0_2_4".ref = "flake-pinning";
  inputs."random-v0_2_4".dir = "nimpkgs/r/random/v0_2_4";

    inputs."random-v0_3_0".type = "github";
  inputs."random-v0_3_0".owner = "riinr";
  inputs."random-v0_3_0".repo = "flake-nimble";
  inputs."random-v0_3_0".ref = "flake-pinning";
  inputs."random-v0_3_0".dir = "nimpkgs/r/random/v0_3_0";

    inputs."random-v0_4_0".type = "github";
  inputs."random-v0_4_0".owner = "riinr";
  inputs."random-v0_4_0".repo = "flake-nimble";
  inputs."random-v0_4_0".ref = "flake-pinning";
  inputs."random-v0_4_0".dir = "nimpkgs/r/random/v0_4_0";

    inputs."random-v0_5_0".type = "github";
  inputs."random-v0_5_0".owner = "riinr";
  inputs."random-v0_5_0".repo = "flake-nimble";
  inputs."random-v0_5_0".ref = "flake-pinning";
  inputs."random-v0_5_0".dir = "nimpkgs/r/random/v0_5_0";

    inputs."random-v0_5_1".type = "github";
  inputs."random-v0_5_1".owner = "riinr";
  inputs."random-v0_5_1".repo = "flake-nimble";
  inputs."random-v0_5_1".ref = "flake-pinning";
  inputs."random-v0_5_1".dir = "nimpkgs/r/random/v0_5_1";

    inputs."random-v0_5_2".type = "github";
  inputs."random-v0_5_2".owner = "riinr";
  inputs."random-v0_5_2".repo = "flake-nimble";
  inputs."random-v0_5_2".ref = "flake-pinning";
  inputs."random-v0_5_2".dir = "nimpkgs/r/random/v0_5_2";

    inputs."random-v0_5_3".type = "github";
  inputs."random-v0_5_3".owner = "riinr";
  inputs."random-v0_5_3".repo = "flake-nimble";
  inputs."random-v0_5_3".ref = "flake-pinning";
  inputs."random-v0_5_3".dir = "nimpkgs/r/random/v0_5_3";

    inputs."random-v0_5_4".type = "github";
  inputs."random-v0_5_4".owner = "riinr";
  inputs."random-v0_5_4".repo = "flake-nimble";
  inputs."random-v0_5_4".ref = "flake-pinning";
  inputs."random-v0_5_4".dir = "nimpkgs/r/random/v0_5_4";

    inputs."random-v0_5_5".type = "github";
  inputs."random-v0_5_5".owner = "riinr";
  inputs."random-v0_5_5".repo = "flake-nimble";
  inputs."random-v0_5_5".ref = "flake-pinning";
  inputs."random-v0_5_5".dir = "nimpkgs/r/random/v0_5_5";

    inputs."random-v0_5_6".type = "github";
  inputs."random-v0_5_6".owner = "riinr";
  inputs."random-v0_5_6".repo = "flake-nimble";
  inputs."random-v0_5_6".ref = "flake-pinning";
  inputs."random-v0_5_6".dir = "nimpkgs/r/random/v0_5_6";

    inputs."random-v0_5_7".type = "github";
  inputs."random-v0_5_7".owner = "riinr";
  inputs."random-v0_5_7".repo = "flake-nimble";
  inputs."random-v0_5_7".ref = "flake-pinning";
  inputs."random-v0_5_7".dir = "nimpkgs/r/random/v0_5_7";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}