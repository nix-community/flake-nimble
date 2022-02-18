{
  description = ''Statistic-driven microbenchmark framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."criterion-master".type = "github";
  inputs."criterion-master".owner = "riinr";
  inputs."criterion-master".repo = "flake-nimble";
  inputs."criterion-master".ref = "flake-pinning";
  inputs."criterion-master".dir = "nimpkgs/c/criterion/master";

    inputs."criterion-0_1_0".type = "github";
  inputs."criterion-0_1_0".owner = "riinr";
  inputs."criterion-0_1_0".repo = "flake-nimble";
  inputs."criterion-0_1_0".ref = "flake-pinning";
  inputs."criterion-0_1_0".dir = "nimpkgs/c/criterion/0_1_0";

    inputs."criterion-0_1_1".type = "github";
  inputs."criterion-0_1_1".owner = "riinr";
  inputs."criterion-0_1_1".repo = "flake-nimble";
  inputs."criterion-0_1_1".ref = "flake-pinning";
  inputs."criterion-0_1_1".dir = "nimpkgs/c/criterion/0_1_1";

    inputs."criterion-0_1_2".type = "github";
  inputs."criterion-0_1_2".owner = "riinr";
  inputs."criterion-0_1_2".repo = "flake-nimble";
  inputs."criterion-0_1_2".ref = "flake-pinning";
  inputs."criterion-0_1_2".dir = "nimpkgs/c/criterion/0_1_2";

    inputs."criterion-0_1_3".type = "github";
  inputs."criterion-0_1_3".owner = "riinr";
  inputs."criterion-0_1_3".repo = "flake-nimble";
  inputs."criterion-0_1_3".ref = "flake-pinning";
  inputs."criterion-0_1_3".dir = "nimpkgs/c/criterion/0_1_3";

    inputs."criterion-0_2_0".type = "github";
  inputs."criterion-0_2_0".owner = "riinr";
  inputs."criterion-0_2_0".repo = "flake-nimble";
  inputs."criterion-0_2_0".ref = "flake-pinning";
  inputs."criterion-0_2_0".dir = "nimpkgs/c/criterion/0_2_0";

    inputs."criterion-0_2_1".type = "github";
  inputs."criterion-0_2_1".owner = "riinr";
  inputs."criterion-0_2_1".repo = "flake-nimble";
  inputs."criterion-0_2_1".ref = "flake-pinning";
  inputs."criterion-0_2_1".dir = "nimpkgs/c/criterion/0_2_1";

    inputs."criterion-0_2_2".type = "github";
  inputs."criterion-0_2_2".owner = "riinr";
  inputs."criterion-0_2_2".repo = "flake-nimble";
  inputs."criterion-0_2_2".ref = "flake-pinning";
  inputs."criterion-0_2_2".dir = "nimpkgs/c/criterion/0_2_2";

    inputs."criterion-0_2_3".type = "github";
  inputs."criterion-0_2_3".owner = "riinr";
  inputs."criterion-0_2_3".repo = "flake-nimble";
  inputs."criterion-0_2_3".ref = "flake-pinning";
  inputs."criterion-0_2_3".dir = "nimpkgs/c/criterion/0_2_3";

    inputs."criterion-0_2_4".type = "github";
  inputs."criterion-0_2_4".owner = "riinr";
  inputs."criterion-0_2_4".repo = "flake-nimble";
  inputs."criterion-0_2_4".ref = "flake-pinning";
  inputs."criterion-0_2_4".dir = "nimpkgs/c/criterion/0_2_4";

    inputs."criterion-0_2_5".type = "github";
  inputs."criterion-0_2_5".owner = "riinr";
  inputs."criterion-0_2_5".repo = "flake-nimble";
  inputs."criterion-0_2_5".ref = "flake-pinning";
  inputs."criterion-0_2_5".dir = "nimpkgs/c/criterion/0_2_5";

    inputs."criterion-0_2_6".type = "github";
  inputs."criterion-0_2_6".owner = "riinr";
  inputs."criterion-0_2_6".repo = "flake-nimble";
  inputs."criterion-0_2_6".ref = "flake-pinning";
  inputs."criterion-0_2_6".dir = "nimpkgs/c/criterion/0_2_6";

    inputs."criterion-0_2_7".type = "github";
  inputs."criterion-0_2_7".owner = "riinr";
  inputs."criterion-0_2_7".repo = "flake-nimble";
  inputs."criterion-0_2_7".ref = "flake-pinning";
  inputs."criterion-0_2_7".dir = "nimpkgs/c/criterion/0_2_7";

    inputs."criterion-0_2_8".type = "github";
  inputs."criterion-0_2_8".owner = "riinr";
  inputs."criterion-0_2_8".repo = "flake-nimble";
  inputs."criterion-0_2_8".ref = "flake-pinning";
  inputs."criterion-0_2_8".dir = "nimpkgs/c/criterion/0_2_8";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}