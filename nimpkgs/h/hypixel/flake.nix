{
  description = ''The Hypixel API, in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."hypixel-main".type = "github";
  inputs."hypixel-main".owner = "riinr";
  inputs."hypixel-main".repo = "flake-nimble";
  inputs."hypixel-main".ref = "flake-pinning";
  inputs."hypixel-main".dir = "nimpkgs/h/hypixel/main";
  inputs."hypixel-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hypixel-v0_2_0".type = "github";
  inputs."hypixel-v0_2_0".owner = "riinr";
  inputs."hypixel-v0_2_0".repo = "flake-nimble";
  inputs."hypixel-v0_2_0".ref = "flake-pinning";
  inputs."hypixel-v0_2_0".dir = "nimpkgs/h/hypixel/v0_2_0";
  inputs."hypixel-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hypixel-v0_2_1".type = "github";
  inputs."hypixel-v0_2_1".owner = "riinr";
  inputs."hypixel-v0_2_1".repo = "flake-nimble";
  inputs."hypixel-v0_2_1".ref = "flake-pinning";
  inputs."hypixel-v0_2_1".dir = "nimpkgs/h/hypixel/v0_2_1";
  inputs."hypixel-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hypixel-v0_2_2".type = "github";
  inputs."hypixel-v0_2_2".owner = "riinr";
  inputs."hypixel-v0_2_2".repo = "flake-nimble";
  inputs."hypixel-v0_2_2".ref = "flake-pinning";
  inputs."hypixel-v0_2_2".dir = "nimpkgs/h/hypixel/v0_2_2";
  inputs."hypixel-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hypixel-v0_2_3".type = "github";
  inputs."hypixel-v0_2_3".owner = "riinr";
  inputs."hypixel-v0_2_3".repo = "flake-nimble";
  inputs."hypixel-v0_2_3".ref = "flake-pinning";
  inputs."hypixel-v0_2_3".dir = "nimpkgs/h/hypixel/v0_2_3";
  inputs."hypixel-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hypixel-v0_3_0".type = "github";
  inputs."hypixel-v0_3_0".owner = "riinr";
  inputs."hypixel-v0_3_0".repo = "flake-nimble";
  inputs."hypixel-v0_3_0".ref = "flake-pinning";
  inputs."hypixel-v0_3_0".dir = "nimpkgs/h/hypixel/v0_3_0";
  inputs."hypixel-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hypixel-v0_3_1".type = "github";
  inputs."hypixel-v0_3_1".owner = "riinr";
  inputs."hypixel-v0_3_1".repo = "flake-nimble";
  inputs."hypixel-v0_3_1".ref = "flake-pinning";
  inputs."hypixel-v0_3_1".dir = "nimpkgs/h/hypixel/v0_3_1";
  inputs."hypixel-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hypixel-v0_3_2".type = "github";
  inputs."hypixel-v0_3_2".owner = "riinr";
  inputs."hypixel-v0_3_2".repo = "flake-nimble";
  inputs."hypixel-v0_3_2".ref = "flake-pinning";
  inputs."hypixel-v0_3_2".dir = "nimpkgs/h/hypixel/v0_3_2";
  inputs."hypixel-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}