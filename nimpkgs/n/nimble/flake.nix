{
  description = ''Nimble package manager'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimble-master".type = "github";
  inputs."nimble-master".owner = "riinr";
  inputs."nimble-master".repo = "flake-nimble";
  inputs."nimble-master".ref = "flake-pinning";
  inputs."nimble-master".dir = "nimpkgs/n/nimble/master";
  inputs."nimble-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_10_0".type = "github";
  inputs."nimble-v0_10_0".owner = "riinr";
  inputs."nimble-v0_10_0".repo = "flake-nimble";
  inputs."nimble-v0_10_0".ref = "flake-pinning";
  inputs."nimble-v0_10_0".dir = "nimpkgs/n/nimble/v0_10_0";
  inputs."nimble-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_10_2".type = "github";
  inputs."nimble-v0_10_2".owner = "riinr";
  inputs."nimble-v0_10_2".repo = "flake-nimble";
  inputs."nimble-v0_10_2".ref = "flake-pinning";
  inputs."nimble-v0_10_2".dir = "nimpkgs/n/nimble/v0_10_2";
  inputs."nimble-v0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_11_0".type = "github";
  inputs."nimble-v0_11_0".owner = "riinr";
  inputs."nimble-v0_11_0".repo = "flake-nimble";
  inputs."nimble-v0_11_0".ref = "flake-pinning";
  inputs."nimble-v0_11_0".dir = "nimpkgs/n/nimble/v0_11_0";
  inputs."nimble-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_11_2".type = "github";
  inputs."nimble-v0_11_2".owner = "riinr";
  inputs."nimble-v0_11_2".repo = "flake-nimble";
  inputs."nimble-v0_11_2".ref = "flake-pinning";
  inputs."nimble-v0_11_2".dir = "nimpkgs/n/nimble/v0_11_2";
  inputs."nimble-v0_11_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_11_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_11_4".type = "github";
  inputs."nimble-v0_11_4".owner = "riinr";
  inputs."nimble-v0_11_4".repo = "flake-nimble";
  inputs."nimble-v0_11_4".ref = "flake-pinning";
  inputs."nimble-v0_11_4".dir = "nimpkgs/n/nimble/v0_11_4";
  inputs."nimble-v0_11_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_11_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_12_0".type = "github";
  inputs."nimble-v0_12_0".owner = "riinr";
  inputs."nimble-v0_12_0".repo = "flake-nimble";
  inputs."nimble-v0_12_0".ref = "flake-pinning";
  inputs."nimble-v0_12_0".dir = "nimpkgs/n/nimble/v0_12_0";
  inputs."nimble-v0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_13_0".type = "github";
  inputs."nimble-v0_13_0".owner = "riinr";
  inputs."nimble-v0_13_0".repo = "flake-nimble";
  inputs."nimble-v0_13_0".ref = "flake-pinning";
  inputs."nimble-v0_13_0".dir = "nimpkgs/n/nimble/v0_13_0";
  inputs."nimble-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_13_1".type = "github";
  inputs."nimble-v0_13_1".owner = "riinr";
  inputs."nimble-v0_13_1".repo = "flake-nimble";
  inputs."nimble-v0_13_1".ref = "flake-pinning";
  inputs."nimble-v0_13_1".dir = "nimpkgs/n/nimble/v0_13_1";
  inputs."nimble-v0_13_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_13_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_2".type = "github";
  inputs."nimble-v0_2".owner = "riinr";
  inputs."nimble-v0_2".repo = "flake-nimble";
  inputs."nimble-v0_2".ref = "flake-pinning";
  inputs."nimble-v0_2".dir = "nimpkgs/n/nimble/v0_2";
  inputs."nimble-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_4".type = "github";
  inputs."nimble-v0_4".owner = "riinr";
  inputs."nimble-v0_4".repo = "flake-nimble";
  inputs."nimble-v0_4".ref = "flake-pinning";
  inputs."nimble-v0_4".dir = "nimpkgs/n/nimble/v0_4";
  inputs."nimble-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_6".type = "github";
  inputs."nimble-v0_6".owner = "riinr";
  inputs."nimble-v0_6".repo = "flake-nimble";
  inputs."nimble-v0_6".ref = "flake-pinning";
  inputs."nimble-v0_6".dir = "nimpkgs/n/nimble/v0_6";
  inputs."nimble-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_6_2".type = "github";
  inputs."nimble-v0_6_2".owner = "riinr";
  inputs."nimble-v0_6_2".repo = "flake-nimble";
  inputs."nimble-v0_6_2".ref = "flake-pinning";
  inputs."nimble-v0_6_2".dir = "nimpkgs/n/nimble/v0_6_2";
  inputs."nimble-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_6_4".type = "github";
  inputs."nimble-v0_6_4".owner = "riinr";
  inputs."nimble-v0_6_4".repo = "flake-nimble";
  inputs."nimble-v0_6_4".ref = "flake-pinning";
  inputs."nimble-v0_6_4".dir = "nimpkgs/n/nimble/v0_6_4";
  inputs."nimble-v0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_7_0".type = "github";
  inputs."nimble-v0_7_0".owner = "riinr";
  inputs."nimble-v0_7_0".repo = "flake-nimble";
  inputs."nimble-v0_7_0".ref = "flake-pinning";
  inputs."nimble-v0_7_0".dir = "nimpkgs/n/nimble/v0_7_0";
  inputs."nimble-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_7_10".type = "github";
  inputs."nimble-v0_7_10".owner = "riinr";
  inputs."nimble-v0_7_10".repo = "flake-nimble";
  inputs."nimble-v0_7_10".ref = "flake-pinning";
  inputs."nimble-v0_7_10".dir = "nimpkgs/n/nimble/v0_7_10";
  inputs."nimble-v0_7_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_7_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_7_2".type = "github";
  inputs."nimble-v0_7_2".owner = "riinr";
  inputs."nimble-v0_7_2".repo = "flake-nimble";
  inputs."nimble-v0_7_2".ref = "flake-pinning";
  inputs."nimble-v0_7_2".dir = "nimpkgs/n/nimble/v0_7_2";
  inputs."nimble-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_7_4".type = "github";
  inputs."nimble-v0_7_4".owner = "riinr";
  inputs."nimble-v0_7_4".repo = "flake-nimble";
  inputs."nimble-v0_7_4".ref = "flake-pinning";
  inputs."nimble-v0_7_4".dir = "nimpkgs/n/nimble/v0_7_4";
  inputs."nimble-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_7_6".type = "github";
  inputs."nimble-v0_7_6".owner = "riinr";
  inputs."nimble-v0_7_6".repo = "flake-nimble";
  inputs."nimble-v0_7_6".ref = "flake-pinning";
  inputs."nimble-v0_7_6".dir = "nimpkgs/n/nimble/v0_7_6";
  inputs."nimble-v0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_7_8".type = "github";
  inputs."nimble-v0_7_8".owner = "riinr";
  inputs."nimble-v0_7_8".repo = "flake-nimble";
  inputs."nimble-v0_7_8".ref = "flake-pinning";
  inputs."nimble-v0_7_8".dir = "nimpkgs/n/nimble/v0_7_8";
  inputs."nimble-v0_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_8_0".type = "github";
  inputs."nimble-v0_8_0".owner = "riinr";
  inputs."nimble-v0_8_0".repo = "flake-nimble";
  inputs."nimble-v0_8_0".ref = "flake-pinning";
  inputs."nimble-v0_8_0".dir = "nimpkgs/n/nimble/v0_8_0";
  inputs."nimble-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_8_10".type = "github";
  inputs."nimble-v0_8_10".owner = "riinr";
  inputs."nimble-v0_8_10".repo = "flake-nimble";
  inputs."nimble-v0_8_10".ref = "flake-pinning";
  inputs."nimble-v0_8_10".dir = "nimpkgs/n/nimble/v0_8_10";
  inputs."nimble-v0_8_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_8_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_8_2".type = "github";
  inputs."nimble-v0_8_2".owner = "riinr";
  inputs."nimble-v0_8_2".repo = "flake-nimble";
  inputs."nimble-v0_8_2".ref = "flake-pinning";
  inputs."nimble-v0_8_2".dir = "nimpkgs/n/nimble/v0_8_2";
  inputs."nimble-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_8_4".type = "github";
  inputs."nimble-v0_8_4".owner = "riinr";
  inputs."nimble-v0_8_4".repo = "flake-nimble";
  inputs."nimble-v0_8_4".ref = "flake-pinning";
  inputs."nimble-v0_8_4".dir = "nimpkgs/n/nimble/v0_8_4";
  inputs."nimble-v0_8_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_8_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_8_6".type = "github";
  inputs."nimble-v0_8_6".owner = "riinr";
  inputs."nimble-v0_8_6".repo = "flake-nimble";
  inputs."nimble-v0_8_6".ref = "flake-pinning";
  inputs."nimble-v0_8_6".dir = "nimpkgs/n/nimble/v0_8_6";
  inputs."nimble-v0_8_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_8_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_8_8".type = "github";
  inputs."nimble-v0_8_8".owner = "riinr";
  inputs."nimble-v0_8_8".repo = "flake-nimble";
  inputs."nimble-v0_8_8".ref = "flake-pinning";
  inputs."nimble-v0_8_8".dir = "nimpkgs/n/nimble/v0_8_8";
  inputs."nimble-v0_8_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_8_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimble-v0_9_0".type = "github";
  inputs."nimble-v0_9_0".owner = "riinr";
  inputs."nimble-v0_9_0".repo = "flake-nimble";
  inputs."nimble-v0_9_0".ref = "flake-pinning";
  inputs."nimble-v0_9_0".dir = "nimpkgs/n/nimble/v0_9_0";
  inputs."nimble-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}