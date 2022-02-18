{
  description = ''Linear algebra for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."neo-master".type = "github";
  inputs."neo-master".owner = "riinr";
  inputs."neo-master".repo = "flake-nimble";
  inputs."neo-master".ref = "flake-pinning";
  inputs."neo-master".dir = "nimpkgs/n/neo/master";

    inputs."neo-0_1_1".type = "github";
  inputs."neo-0_1_1".owner = "riinr";
  inputs."neo-0_1_1".repo = "flake-nimble";
  inputs."neo-0_1_1".ref = "flake-pinning";
  inputs."neo-0_1_1".dir = "nimpkgs/n/neo/0_1_1";

    inputs."neo-0_1_2".type = "github";
  inputs."neo-0_1_2".owner = "riinr";
  inputs."neo-0_1_2".repo = "flake-nimble";
  inputs."neo-0_1_2".ref = "flake-pinning";
  inputs."neo-0_1_2".dir = "nimpkgs/n/neo/0_1_2";

    inputs."neo-0_1_3".type = "github";
  inputs."neo-0_1_3".owner = "riinr";
  inputs."neo-0_1_3".repo = "flake-nimble";
  inputs."neo-0_1_3".ref = "flake-pinning";
  inputs."neo-0_1_3".dir = "nimpkgs/n/neo/0_1_3";

    inputs."neo-0_1_4".type = "github";
  inputs."neo-0_1_4".owner = "riinr";
  inputs."neo-0_1_4".repo = "flake-nimble";
  inputs."neo-0_1_4".ref = "flake-pinning";
  inputs."neo-0_1_4".dir = "nimpkgs/n/neo/0_1_4";

    inputs."neo-0_1_5".type = "github";
  inputs."neo-0_1_5".owner = "riinr";
  inputs."neo-0_1_5".repo = "flake-nimble";
  inputs."neo-0_1_5".ref = "flake-pinning";
  inputs."neo-0_1_5".dir = "nimpkgs/n/neo/0_1_5";

    inputs."neo-0_1_6".type = "github";
  inputs."neo-0_1_6".owner = "riinr";
  inputs."neo-0_1_6".repo = "flake-nimble";
  inputs."neo-0_1_6".ref = "flake-pinning";
  inputs."neo-0_1_6".dir = "nimpkgs/n/neo/0_1_6";

    inputs."neo-0_1_7".type = "github";
  inputs."neo-0_1_7".owner = "riinr";
  inputs."neo-0_1_7".repo = "flake-nimble";
  inputs."neo-0_1_7".ref = "flake-pinning";
  inputs."neo-0_1_7".dir = "nimpkgs/n/neo/0_1_7";

    inputs."neo-0_2_0".type = "github";
  inputs."neo-0_2_0".owner = "riinr";
  inputs."neo-0_2_0".repo = "flake-nimble";
  inputs."neo-0_2_0".ref = "flake-pinning";
  inputs."neo-0_2_0".dir = "nimpkgs/n/neo/0_2_0";

    inputs."neo-0_2_2".type = "github";
  inputs."neo-0_2_2".owner = "riinr";
  inputs."neo-0_2_2".repo = "flake-nimble";
  inputs."neo-0_2_2".ref = "flake-pinning";
  inputs."neo-0_2_2".dir = "nimpkgs/n/neo/0_2_2";

    inputs."neo-0_2_3".type = "github";
  inputs."neo-0_2_3".owner = "riinr";
  inputs."neo-0_2_3".repo = "flake-nimble";
  inputs."neo-0_2_3".ref = "flake-pinning";
  inputs."neo-0_2_3".dir = "nimpkgs/n/neo/0_2_3";

    inputs."neo-0_2_4".type = "github";
  inputs."neo-0_2_4".owner = "riinr";
  inputs."neo-0_2_4".repo = "flake-nimble";
  inputs."neo-0_2_4".ref = "flake-pinning";
  inputs."neo-0_2_4".dir = "nimpkgs/n/neo/0_2_4";

    inputs."neo-0_2_5".type = "github";
  inputs."neo-0_2_5".owner = "riinr";
  inputs."neo-0_2_5".repo = "flake-nimble";
  inputs."neo-0_2_5".ref = "flake-pinning";
  inputs."neo-0_2_5".dir = "nimpkgs/n/neo/0_2_5";

    inputs."neo-0_3_0".type = "github";
  inputs."neo-0_3_0".owner = "riinr";
  inputs."neo-0_3_0".repo = "flake-nimble";
  inputs."neo-0_3_0".ref = "flake-pinning";
  inputs."neo-0_3_0".dir = "nimpkgs/n/neo/0_3_0";

    inputs."neo-0_3_1".type = "github";
  inputs."neo-0_3_1".owner = "riinr";
  inputs."neo-0_3_1".repo = "flake-nimble";
  inputs."neo-0_3_1".ref = "flake-pinning";
  inputs."neo-0_3_1".dir = "nimpkgs/n/neo/0_3_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}