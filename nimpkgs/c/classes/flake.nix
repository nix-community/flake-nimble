{
  description = ''Adds class support to Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."classes-master".type = "github";
  inputs."classes-master".owner = "riinr";
  inputs."classes-master".repo = "flake-nimble";
  inputs."classes-master".ref = "flake-pinning";
  inputs."classes-master".dir = "nimpkgs/c/classes/master";
  inputs."classes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."classes-v0_2_0".type = "github";
  inputs."classes-v0_2_0".owner = "riinr";
  inputs."classes-v0_2_0".repo = "flake-nimble";
  inputs."classes-v0_2_0".ref = "flake-pinning";
  inputs."classes-v0_2_0".dir = "nimpkgs/c/classes/v0_2_0";
  inputs."classes-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."classes-v0_2_1".type = "github";
  inputs."classes-v0_2_1".owner = "riinr";
  inputs."classes-v0_2_1".repo = "flake-nimble";
  inputs."classes-v0_2_1".ref = "flake-pinning";
  inputs."classes-v0_2_1".dir = "nimpkgs/c/classes/v0_2_1";
  inputs."classes-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."classes-v0_2_11".type = "github";
  inputs."classes-v0_2_11".owner = "riinr";
  inputs."classes-v0_2_11".repo = "flake-nimble";
  inputs."classes-v0_2_11".ref = "flake-pinning";
  inputs."classes-v0_2_11".dir = "nimpkgs/c/classes/v0_2_11";
  inputs."classes-v0_2_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."classes-v0_2_2".type = "github";
  inputs."classes-v0_2_2".owner = "riinr";
  inputs."classes-v0_2_2".repo = "flake-nimble";
  inputs."classes-v0_2_2".ref = "flake-pinning";
  inputs."classes-v0_2_2".dir = "nimpkgs/c/classes/v0_2_2";
  inputs."classes-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."classes-v0_2_3".type = "github";
  inputs."classes-v0_2_3".owner = "riinr";
  inputs."classes-v0_2_3".repo = "flake-nimble";
  inputs."classes-v0_2_3".ref = "flake-pinning";
  inputs."classes-v0_2_3".dir = "nimpkgs/c/classes/v0_2_3";
  inputs."classes-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."classes-v0_2_5".type = "github";
  inputs."classes-v0_2_5".owner = "riinr";
  inputs."classes-v0_2_5".repo = "flake-nimble";
  inputs."classes-v0_2_5".ref = "flake-pinning";
  inputs."classes-v0_2_5".dir = "nimpkgs/c/classes/v0_2_5";
  inputs."classes-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."classes-v0_2_8".type = "github";
  inputs."classes-v0_2_8".owner = "riinr";
  inputs."classes-v0_2_8".repo = "flake-nimble";
  inputs."classes-v0_2_8".ref = "flake-pinning";
  inputs."classes-v0_2_8".dir = "nimpkgs/c/classes/v0_2_8";
  inputs."classes-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."classes-v0_2_9".type = "github";
  inputs."classes-v0_2_9".owner = "riinr";
  inputs."classes-v0_2_9".repo = "flake-nimble";
  inputs."classes-v0_2_9".ref = "flake-pinning";
  inputs."classes-v0_2_9".dir = "nimpkgs/c/classes/v0_2_9";
  inputs."classes-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}