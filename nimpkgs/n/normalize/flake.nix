{
  description = ''Unicode normalization forms (tr15)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."normalize-master".type = "github";
  inputs."normalize-master".owner = "riinr";
  inputs."normalize-master".repo = "flake-nimble";
  inputs."normalize-master".ref = "flake-pinning";
  inputs."normalize-master".dir = "nimpkgs/n/normalize/master";

    inputs."normalize-v0_1_0".type = "github";
  inputs."normalize-v0_1_0".owner = "riinr";
  inputs."normalize-v0_1_0".repo = "flake-nimble";
  inputs."normalize-v0_1_0".ref = "flake-pinning";
  inputs."normalize-v0_1_0".dir = "nimpkgs/n/normalize/v0_1_0";

    inputs."normalize-v0_1_1".type = "github";
  inputs."normalize-v0_1_1".owner = "riinr";
  inputs."normalize-v0_1_1".repo = "flake-nimble";
  inputs."normalize-v0_1_1".ref = "flake-pinning";
  inputs."normalize-v0_1_1".dir = "nimpkgs/n/normalize/v0_1_1";

    inputs."normalize-v0_2_0".type = "github";
  inputs."normalize-v0_2_0".owner = "riinr";
  inputs."normalize-v0_2_0".repo = "flake-nimble";
  inputs."normalize-v0_2_0".ref = "flake-pinning";
  inputs."normalize-v0_2_0".dir = "nimpkgs/n/normalize/v0_2_0";

    inputs."normalize-v0_2_1".type = "github";
  inputs."normalize-v0_2_1".owner = "riinr";
  inputs."normalize-v0_2_1".repo = "flake-nimble";
  inputs."normalize-v0_2_1".ref = "flake-pinning";
  inputs."normalize-v0_2_1".dir = "nimpkgs/n/normalize/v0_2_1";

    inputs."normalize-v0_2_2".type = "github";
  inputs."normalize-v0_2_2".owner = "riinr";
  inputs."normalize-v0_2_2".repo = "flake-nimble";
  inputs."normalize-v0_2_2".ref = "flake-pinning";
  inputs."normalize-v0_2_2".dir = "nimpkgs/n/normalize/v0_2_2";

    inputs."normalize-v0_3_0".type = "github";
  inputs."normalize-v0_3_0".owner = "riinr";
  inputs."normalize-v0_3_0".repo = "flake-nimble";
  inputs."normalize-v0_3_0".ref = "flake-pinning";
  inputs."normalize-v0_3_0".dir = "nimpkgs/n/normalize/v0_3_0";

    inputs."normalize-v0_3_1".type = "github";
  inputs."normalize-v0_3_1".owner = "riinr";
  inputs."normalize-v0_3_1".repo = "flake-nimble";
  inputs."normalize-v0_3_1".ref = "flake-pinning";
  inputs."normalize-v0_3_1".dir = "nimpkgs/n/normalize/v0_3_1";

    inputs."normalize-v0_4_0".type = "github";
  inputs."normalize-v0_4_0".owner = "riinr";
  inputs."normalize-v0_4_0".repo = "flake-nimble";
  inputs."normalize-v0_4_0".ref = "flake-pinning";
  inputs."normalize-v0_4_0".dir = "nimpkgs/n/normalize/v0_4_0";

    inputs."normalize-v0_5_0".type = "github";
  inputs."normalize-v0_5_0".owner = "riinr";
  inputs."normalize-v0_5_0".repo = "flake-nimble";
  inputs."normalize-v0_5_0".ref = "flake-pinning";
  inputs."normalize-v0_5_0".dir = "nimpkgs/n/normalize/v0_5_0";

    inputs."normalize-v0_6_0".type = "github";
  inputs."normalize-v0_6_0".owner = "riinr";
  inputs."normalize-v0_6_0".repo = "flake-nimble";
  inputs."normalize-v0_6_0".ref = "flake-pinning";
  inputs."normalize-v0_6_0".dir = "nimpkgs/n/normalize/v0_6_0";

    inputs."normalize-v0_8_0".type = "github";
  inputs."normalize-v0_8_0".owner = "riinr";
  inputs."normalize-v0_8_0".repo = "flake-nimble";
  inputs."normalize-v0_8_0".ref = "flake-pinning";
  inputs."normalize-v0_8_0".dir = "nimpkgs/n/normalize/v0_8_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}