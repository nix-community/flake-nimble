{
  description = ''A comprehensive toolkit for all your testing needs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."testutils-master".type = "github";
  inputs."testutils-master".owner = "riinr";
  inputs."testutils-master".repo = "flake-nimble";
  inputs."testutils-master".ref = "flake-pinning";
  inputs."testutils-master".dir = "nimpkgs/t/testutils/master";
  inputs."testutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."testutils-0_0_2".type = "github";
  inputs."testutils-0_0_2".owner = "riinr";
  inputs."testutils-0_0_2".repo = "flake-nimble";
  inputs."testutils-0_0_2".ref = "flake-pinning";
  inputs."testutils-0_0_2".dir = "nimpkgs/t/testutils/0_0_2";
  inputs."testutils-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."testutils-0_1_0".type = "github";
  inputs."testutils-0_1_0".owner = "riinr";
  inputs."testutils-0_1_0".repo = "flake-nimble";
  inputs."testutils-0_1_0".ref = "flake-pinning";
  inputs."testutils-0_1_0".dir = "nimpkgs/t/testutils/0_1_0";
  inputs."testutils-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."testutils-0_1_1".type = "github";
  inputs."testutils-0_1_1".owner = "riinr";
  inputs."testutils-0_1_1".repo = "flake-nimble";
  inputs."testutils-0_1_1".ref = "flake-pinning";
  inputs."testutils-0_1_1".dir = "nimpkgs/t/testutils/0_1_1";
  inputs."testutils-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."testutils-0_2_0".type = "github";
  inputs."testutils-0_2_0".owner = "riinr";
  inputs."testutils-0_2_0".repo = "flake-nimble";
  inputs."testutils-0_2_0".ref = "flake-pinning";
  inputs."testutils-0_2_0".dir = "nimpkgs/t/testutils/0_2_0";
  inputs."testutils-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."testutils-0_3_0".type = "github";
  inputs."testutils-0_3_0".owner = "riinr";
  inputs."testutils-0_3_0".repo = "flake-nimble";
  inputs."testutils-0_3_0".ref = "flake-pinning";
  inputs."testutils-0_3_0".dir = "nimpkgs/t/testutils/0_3_0";
  inputs."testutils-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."testutils-0_4_0".type = "github";
  inputs."testutils-0_4_0".owner = "riinr";
  inputs."testutils-0_4_0".repo = "flake-nimble";
  inputs."testutils-0_4_0".ref = "flake-pinning";
  inputs."testutils-0_4_0".dir = "nimpkgs/t/testutils/0_4_0";
  inputs."testutils-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."testutils-0_4_1".type = "github";
  inputs."testutils-0_4_1".owner = "riinr";
  inputs."testutils-0_4_1".repo = "flake-nimble";
  inputs."testutils-0_4_1".ref = "flake-pinning";
  inputs."testutils-0_4_1".dir = "nimpkgs/t/testutils/0_4_1";
  inputs."testutils-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."testutils-v0_4_2".type = "github";
  inputs."testutils-v0_4_2".owner = "riinr";
  inputs."testutils-v0_4_2".repo = "flake-nimble";
  inputs."testutils-v0_4_2".ref = "flake-pinning";
  inputs."testutils-v0_4_2".dir = "nimpkgs/t/testutils/v0_4_2";
  inputs."testutils-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}