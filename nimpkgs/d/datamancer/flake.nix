{
  description = ''A dataframe library with a dplyr like API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."datamancer-master".type = "github";
  inputs."datamancer-master".owner = "riinr";
  inputs."datamancer-master".repo = "flake-nimble";
  inputs."datamancer-master".ref = "flake-pinning";
  inputs."datamancer-master".dir = "nimpkgs/d/datamancer/master";

    inputs."datamancer-v0_1_0".type = "github";
  inputs."datamancer-v0_1_0".owner = "riinr";
  inputs."datamancer-v0_1_0".repo = "flake-nimble";
  inputs."datamancer-v0_1_0".ref = "flake-pinning";
  inputs."datamancer-v0_1_0".dir = "nimpkgs/d/datamancer/v0_1_0";

    inputs."datamancer-v0_1_1".type = "github";
  inputs."datamancer-v0_1_1".owner = "riinr";
  inputs."datamancer-v0_1_1".repo = "flake-nimble";
  inputs."datamancer-v0_1_1".ref = "flake-pinning";
  inputs."datamancer-v0_1_1".dir = "nimpkgs/d/datamancer/v0_1_1";

    inputs."datamancer-v0_1_10".type = "github";
  inputs."datamancer-v0_1_10".owner = "riinr";
  inputs."datamancer-v0_1_10".repo = "flake-nimble";
  inputs."datamancer-v0_1_10".ref = "flake-pinning";
  inputs."datamancer-v0_1_10".dir = "nimpkgs/d/datamancer/v0_1_10";

    inputs."datamancer-v0_1_11".type = "github";
  inputs."datamancer-v0_1_11".owner = "riinr";
  inputs."datamancer-v0_1_11".repo = "flake-nimble";
  inputs."datamancer-v0_1_11".ref = "flake-pinning";
  inputs."datamancer-v0_1_11".dir = "nimpkgs/d/datamancer/v0_1_11";

    inputs."datamancer-v0_1_2".type = "github";
  inputs."datamancer-v0_1_2".owner = "riinr";
  inputs."datamancer-v0_1_2".repo = "flake-nimble";
  inputs."datamancer-v0_1_2".ref = "flake-pinning";
  inputs."datamancer-v0_1_2".dir = "nimpkgs/d/datamancer/v0_1_2";

    inputs."datamancer-v0_1_3".type = "github";
  inputs."datamancer-v0_1_3".owner = "riinr";
  inputs."datamancer-v0_1_3".repo = "flake-nimble";
  inputs."datamancer-v0_1_3".ref = "flake-pinning";
  inputs."datamancer-v0_1_3".dir = "nimpkgs/d/datamancer/v0_1_3";

    inputs."datamancer-v0_1_4".type = "github";
  inputs."datamancer-v0_1_4".owner = "riinr";
  inputs."datamancer-v0_1_4".repo = "flake-nimble";
  inputs."datamancer-v0_1_4".ref = "flake-pinning";
  inputs."datamancer-v0_1_4".dir = "nimpkgs/d/datamancer/v0_1_4";

    inputs."datamancer-v0_1_5".type = "github";
  inputs."datamancer-v0_1_5".owner = "riinr";
  inputs."datamancer-v0_1_5".repo = "flake-nimble";
  inputs."datamancer-v0_1_5".ref = "flake-pinning";
  inputs."datamancer-v0_1_5".dir = "nimpkgs/d/datamancer/v0_1_5";

    inputs."datamancer-v0_1_6".type = "github";
  inputs."datamancer-v0_1_6".owner = "riinr";
  inputs."datamancer-v0_1_6".repo = "flake-nimble";
  inputs."datamancer-v0_1_6".ref = "flake-pinning";
  inputs."datamancer-v0_1_6".dir = "nimpkgs/d/datamancer/v0_1_6";

    inputs."datamancer-v0_1_7".type = "github";
  inputs."datamancer-v0_1_7".owner = "riinr";
  inputs."datamancer-v0_1_7".repo = "flake-nimble";
  inputs."datamancer-v0_1_7".ref = "flake-pinning";
  inputs."datamancer-v0_1_7".dir = "nimpkgs/d/datamancer/v0_1_7";

    inputs."datamancer-v0_1_8".type = "github";
  inputs."datamancer-v0_1_8".owner = "riinr";
  inputs."datamancer-v0_1_8".repo = "flake-nimble";
  inputs."datamancer-v0_1_8".ref = "flake-pinning";
  inputs."datamancer-v0_1_8".dir = "nimpkgs/d/datamancer/v0_1_8";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}