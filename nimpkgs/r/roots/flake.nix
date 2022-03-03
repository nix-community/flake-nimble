{
  description = ''Root finding functions for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."roots-master".type = "github";
  inputs."roots-master".owner = "riinr";
  inputs."roots-master".repo = "flake-nimble";
  inputs."roots-master".ref = "flake-pinning";
  inputs."roots-master".dir = "nimpkgs/r/roots/master";
  inputs."roots-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."roots-v0_1".type = "github";
  inputs."roots-v0_1".owner = "riinr";
  inputs."roots-v0_1".repo = "flake-nimble";
  inputs."roots-v0_1".ref = "flake-pinning";
  inputs."roots-v0_1".dir = "nimpkgs/r/roots/v0_1";
  inputs."roots-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."roots-v0_1_1".type = "github";
  inputs."roots-v0_1_1".owner = "riinr";
  inputs."roots-v0_1_1".repo = "flake-nimble";
  inputs."roots-v0_1_1".ref = "flake-pinning";
  inputs."roots-v0_1_1".dir = "nimpkgs/r/roots/v0_1_1";
  inputs."roots-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."roots-v0_1_2".type = "github";
  inputs."roots-v0_1_2".owner = "riinr";
  inputs."roots-v0_1_2".repo = "flake-nimble";
  inputs."roots-v0_1_2".ref = "flake-pinning";
  inputs."roots-v0_1_2".dir = "nimpkgs/r/roots/v0_1_2";
  inputs."roots-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."roots-v0_2_0".type = "github";
  inputs."roots-v0_2_0".owner = "riinr";
  inputs."roots-v0_2_0".repo = "flake-nimble";
  inputs."roots-v0_2_0".ref = "flake-pinning";
  inputs."roots-v0_2_0".dir = "nimpkgs/r/roots/v0_2_0";
  inputs."roots-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."roots-v0_2_0_1".type = "github";
  inputs."roots-v0_2_0_1".owner = "riinr";
  inputs."roots-v0_2_0_1".repo = "flake-nimble";
  inputs."roots-v0_2_0_1".ref = "flake-pinning";
  inputs."roots-v0_2_0_1".dir = "nimpkgs/r/roots/v0_2_0_1";
  inputs."roots-v0_2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."roots-v0_2_1".type = "github";
  inputs."roots-v0_2_1".owner = "riinr";
  inputs."roots-v0_2_1".repo = "flake-nimble";
  inputs."roots-v0_2_1".ref = "flake-pinning";
  inputs."roots-v0_2_1".dir = "nimpkgs/r/roots/v0_2_1";
  inputs."roots-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."roots-v0_3_0".type = "github";
  inputs."roots-v0_3_0".owner = "riinr";
  inputs."roots-v0_3_0".repo = "flake-nimble";
  inputs."roots-v0_3_0".ref = "flake-pinning";
  inputs."roots-v0_3_0".dir = "nimpkgs/r/roots/v0_3_0";
  inputs."roots-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."roots-v0_3_1".type = "github";
  inputs."roots-v0_3_1".owner = "riinr";
  inputs."roots-v0_3_1".repo = "flake-nimble";
  inputs."roots-v0_3_1".ref = "flake-pinning";
  inputs."roots-v0_3_1".dir = "nimpkgs/r/roots/v0_3_1";
  inputs."roots-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."roots-v0_3_2".type = "github";
  inputs."roots-v0_3_2".owner = "riinr";
  inputs."roots-v0_3_2".repo = "flake-nimble";
  inputs."roots-v0_3_2".ref = "flake-pinning";
  inputs."roots-v0_3_2".dir = "nimpkgs/r/roots/v0_3_2";
  inputs."roots-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."roots-v0_4_0".type = "github";
  inputs."roots-v0_4_0".owner = "riinr";
  inputs."roots-v0_4_0".repo = "flake-nimble";
  inputs."roots-v0_4_0".ref = "flake-pinning";
  inputs."roots-v0_4_0".dir = "nimpkgs/r/roots/v0_4_0";
  inputs."roots-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."roots-v0_4_1".type = "github";
  inputs."roots-v0_4_1".owner = "riinr";
  inputs."roots-v0_4_1".repo = "flake-nimble";
  inputs."roots-v0_4_1".ref = "flake-pinning";
  inputs."roots-v0_4_1".dir = "nimpkgs/r/roots/v0_4_1";
  inputs."roots-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}