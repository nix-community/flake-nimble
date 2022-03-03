{
  description = ''Language Handler for executing Nim inside postgres as a procedural language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."plnim-master".type = "github";
  inputs."plnim-master".owner = "riinr";
  inputs."plnim-master".repo = "flake-nimble";
  inputs."plnim-master".ref = "flake-pinning";
  inputs."plnim-master".dir = "nimpkgs/p/plnim/master";
  inputs."plnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."plnim-v0_1_0".type = "github";
  inputs."plnim-v0_1_0".owner = "riinr";
  inputs."plnim-v0_1_0".repo = "flake-nimble";
  inputs."plnim-v0_1_0".ref = "flake-pinning";
  inputs."plnim-v0_1_0".dir = "nimpkgs/p/plnim/v0_1_0";
  inputs."plnim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."plnim-v0_1_1".type = "github";
  inputs."plnim-v0_1_1".owner = "riinr";
  inputs."plnim-v0_1_1".repo = "flake-nimble";
  inputs."plnim-v0_1_1".ref = "flake-pinning";
  inputs."plnim-v0_1_1".dir = "nimpkgs/p/plnim/v0_1_1";
  inputs."plnim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."plnim-v0_1_2".type = "github";
  inputs."plnim-v0_1_2".owner = "riinr";
  inputs."plnim-v0_1_2".repo = "flake-nimble";
  inputs."plnim-v0_1_2".ref = "flake-pinning";
  inputs."plnim-v0_1_2".dir = "nimpkgs/p/plnim/v0_1_2";
  inputs."plnim-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."plnim-v0_1_3".type = "github";
  inputs."plnim-v0_1_3".owner = "riinr";
  inputs."plnim-v0_1_3".repo = "flake-nimble";
  inputs."plnim-v0_1_3".ref = "flake-pinning";
  inputs."plnim-v0_1_3".dir = "nimpkgs/p/plnim/v0_1_3";
  inputs."plnim-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."plnim-v0_1_4".type = "github";
  inputs."plnim-v0_1_4".owner = "riinr";
  inputs."plnim-v0_1_4".repo = "flake-nimble";
  inputs."plnim-v0_1_4".ref = "flake-pinning";
  inputs."plnim-v0_1_4".dir = "nimpkgs/p/plnim/v0_1_4";
  inputs."plnim-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."plnim-v0_1_5".type = "github";
  inputs."plnim-v0_1_5".owner = "riinr";
  inputs."plnim-v0_1_5".repo = "flake-nimble";
  inputs."plnim-v0_1_5".ref = "flake-pinning";
  inputs."plnim-v0_1_5".dir = "nimpkgs/p/plnim/v0_1_5";
  inputs."plnim-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."plnim-v0_1_6".type = "github";
  inputs."plnim-v0_1_6".owner = "riinr";
  inputs."plnim-v0_1_6".repo = "flake-nimble";
  inputs."plnim-v0_1_6".ref = "flake-pinning";
  inputs."plnim-v0_1_6".dir = "nimpkgs/p/plnim/v0_1_6";
  inputs."plnim-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."plnim-v0_2_0".type = "github";
  inputs."plnim-v0_2_0".owner = "riinr";
  inputs."plnim-v0_2_0".repo = "flake-nimble";
  inputs."plnim-v0_2_0".ref = "flake-pinning";
  inputs."plnim-v0_2_0".dir = "nimpkgs/p/plnim/v0_2_0";
  inputs."plnim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}