{
  description = ''Various collections and utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."collections-master".type = "github";
  inputs."collections-master".owner = "riinr";
  inputs."collections-master".repo = "flake-nimble";
  inputs."collections-master".ref = "flake-pinning";
  inputs."collections-master".dir = "nimpkgs/c/collections/master";
  inputs."collections-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."collections-v0_0_2".type = "github";
  inputs."collections-v0_0_2".owner = "riinr";
  inputs."collections-v0_0_2".repo = "flake-nimble";
  inputs."collections-v0_0_2".ref = "flake-pinning";
  inputs."collections-v0_0_2".dir = "nimpkgs/c/collections/v0_0_2";
  inputs."collections-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."collections-v0_1_2".type = "github";
  inputs."collections-v0_1_2".owner = "riinr";
  inputs."collections-v0_1_2".repo = "flake-nimble";
  inputs."collections-v0_1_2".ref = "flake-pinning";
  inputs."collections-v0_1_2".dir = "nimpkgs/c/collections/v0_1_2";
  inputs."collections-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."collections-v0_3_0".type = "github";
  inputs."collections-v0_3_0".owner = "riinr";
  inputs."collections-v0_3_0".repo = "flake-nimble";
  inputs."collections-v0_3_0".ref = "flake-pinning";
  inputs."collections-v0_3_0".dir = "nimpkgs/c/collections/v0_3_0";
  inputs."collections-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."collections-v0_3_1".type = "github";
  inputs."collections-v0_3_1".owner = "riinr";
  inputs."collections-v0_3_1".repo = "flake-nimble";
  inputs."collections-v0_3_1".ref = "flake-pinning";
  inputs."collections-v0_3_1".dir = "nimpkgs/c/collections/v0_3_1";
  inputs."collections-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."collections-v0_3_2".type = "github";
  inputs."collections-v0_3_2".owner = "riinr";
  inputs."collections-v0_3_2".repo = "flake-nimble";
  inputs."collections-v0_3_2".ref = "flake-pinning";
  inputs."collections-v0_3_2".dir = "nimpkgs/c/collections/v0_3_2";
  inputs."collections-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."collections-v0_3_3".type = "github";
  inputs."collections-v0_3_3".owner = "riinr";
  inputs."collections-v0_3_3".repo = "flake-nimble";
  inputs."collections-v0_3_3".ref = "flake-pinning";
  inputs."collections-v0_3_3".dir = "nimpkgs/c/collections/v0_3_3";
  inputs."collections-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."collections-v0_3_4".type = "github";
  inputs."collections-v0_3_4".owner = "riinr";
  inputs."collections-v0_3_4".repo = "flake-nimble";
  inputs."collections-v0_3_4".ref = "flake-pinning";
  inputs."collections-v0_3_4".dir = "nimpkgs/c/collections/v0_3_4";
  inputs."collections-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."collections-v0_5_0".type = "github";
  inputs."collections-v0_5_0".owner = "riinr";
  inputs."collections-v0_5_0".repo = "flake-nimble";
  inputs."collections-v0_5_0".ref = "flake-pinning";
  inputs."collections-v0_5_0".dir = "nimpkgs/c/collections/v0_5_0";
  inputs."collections-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."collections-v0_5_1".type = "github";
  inputs."collections-v0_5_1".owner = "riinr";
  inputs."collections-v0_5_1".repo = "flake-nimble";
  inputs."collections-v0_5_1".ref = "flake-pinning";
  inputs."collections-v0_5_1".dir = "nimpkgs/c/collections/v0_5_1";
  inputs."collections-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."collections-v0_5_2".type = "github";
  inputs."collections-v0_5_2".owner = "riinr";
  inputs."collections-v0_5_2".repo = "flake-nimble";
  inputs."collections-v0_5_2".ref = "flake-pinning";
  inputs."collections-v0_5_2".dir = "nimpkgs/c/collections/v0_5_2";
  inputs."collections-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}