{
  description = ''A sinatra-like web framework for Nim with plugins.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jesterwithplugins-master".type = "github";
  inputs."jesterwithplugins-master".owner = "riinr";
  inputs."jesterwithplugins-master".repo = "flake-nimble";
  inputs."jesterwithplugins-master".ref = "flake-pinning";
  inputs."jesterwithplugins-master".dir = "nimpkgs/j/jesterwithplugins/master";
  inputs."jesterwithplugins-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jesterwithplugins-v0_1_0".type = "github";
  inputs."jesterwithplugins-v0_1_0".owner = "riinr";
  inputs."jesterwithplugins-v0_1_0".repo = "flake-nimble";
  inputs."jesterwithplugins-v0_1_0".ref = "flake-pinning";
  inputs."jesterwithplugins-v0_1_0".dir = "nimpkgs/j/jesterwithplugins/v0_1_0";
  inputs."jesterwithplugins-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jesterwithplugins-v0_1_1".type = "github";
  inputs."jesterwithplugins-v0_1_1".owner = "riinr";
  inputs."jesterwithplugins-v0_1_1".repo = "flake-nimble";
  inputs."jesterwithplugins-v0_1_1".ref = "flake-pinning";
  inputs."jesterwithplugins-v0_1_1".dir = "nimpkgs/j/jesterwithplugins/v0_1_1";
  inputs."jesterwithplugins-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jesterwithplugins-v0_2_0".type = "github";
  inputs."jesterwithplugins-v0_2_0".owner = "riinr";
  inputs."jesterwithplugins-v0_2_0".repo = "flake-nimble";
  inputs."jesterwithplugins-v0_2_0".ref = "flake-pinning";
  inputs."jesterwithplugins-v0_2_0".dir = "nimpkgs/j/jesterwithplugins/v0_2_0";
  inputs."jesterwithplugins-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jesterwithplugins-v0_2_1".type = "github";
  inputs."jesterwithplugins-v0_2_1".owner = "riinr";
  inputs."jesterwithplugins-v0_2_1".repo = "flake-nimble";
  inputs."jesterwithplugins-v0_2_1".ref = "flake-pinning";
  inputs."jesterwithplugins-v0_2_1".dir = "nimpkgs/j/jesterwithplugins/v0_2_1";
  inputs."jesterwithplugins-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jesterwithplugins-v0_3_0".type = "github";
  inputs."jesterwithplugins-v0_3_0".owner = "riinr";
  inputs."jesterwithplugins-v0_3_0".repo = "flake-nimble";
  inputs."jesterwithplugins-v0_3_0".ref = "flake-pinning";
  inputs."jesterwithplugins-v0_3_0".dir = "nimpkgs/j/jesterwithplugins/v0_3_0";
  inputs."jesterwithplugins-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jesterwithplugins-v0_4_0".type = "github";
  inputs."jesterwithplugins-v0_4_0".owner = "riinr";
  inputs."jesterwithplugins-v0_4_0".repo = "flake-nimble";
  inputs."jesterwithplugins-v0_4_0".ref = "flake-pinning";
  inputs."jesterwithplugins-v0_4_0".dir = "nimpkgs/j/jesterwithplugins/v0_4_0";
  inputs."jesterwithplugins-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jesterwithplugins-v0_4_1".type = "github";
  inputs."jesterwithplugins-v0_4_1".owner = "riinr";
  inputs."jesterwithplugins-v0_4_1".repo = "flake-nimble";
  inputs."jesterwithplugins-v0_4_1".ref = "flake-pinning";
  inputs."jesterwithplugins-v0_4_1".dir = "nimpkgs/j/jesterwithplugins/v0_4_1";
  inputs."jesterwithplugins-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jesterwithplugins-v0_4_2".type = "github";
  inputs."jesterwithplugins-v0_4_2".owner = "riinr";
  inputs."jesterwithplugins-v0_4_2".repo = "flake-nimble";
  inputs."jesterwithplugins-v0_4_2".ref = "flake-pinning";
  inputs."jesterwithplugins-v0_4_2".dir = "nimpkgs/j/jesterwithplugins/v0_4_2";
  inputs."jesterwithplugins-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jesterwithplugins-v0_4_3".type = "github";
  inputs."jesterwithplugins-v0_4_3".owner = "riinr";
  inputs."jesterwithplugins-v0_4_3".repo = "flake-nimble";
  inputs."jesterwithplugins-v0_4_3".ref = "flake-pinning";
  inputs."jesterwithplugins-v0_4_3".dir = "nimpkgs/j/jesterwithplugins/v0_4_3";
  inputs."jesterwithplugins-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jesterwithplugins-v0_5_0".type = "github";
  inputs."jesterwithplugins-v0_5_0".owner = "riinr";
  inputs."jesterwithplugins-v0_5_0".repo = "flake-nimble";
  inputs."jesterwithplugins-v0_5_0".ref = "flake-pinning";
  inputs."jesterwithplugins-v0_5_0".dir = "nimpkgs/j/jesterwithplugins/v0_5_0";
  inputs."jesterwithplugins-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jesterwithplugins-v0_5_1".type = "github";
  inputs."jesterwithplugins-v0_5_1".owner = "riinr";
  inputs."jesterwithplugins-v0_5_1".repo = "flake-nimble";
  inputs."jesterwithplugins-v0_5_1".ref = "flake-pinning";
  inputs."jesterwithplugins-v0_5_1".dir = "nimpkgs/j/jesterwithplugins/v0_5_1";
  inputs."jesterwithplugins-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jesterwithplugins-v0_5_2".type = "github";
  inputs."jesterwithplugins-v0_5_2".owner = "riinr";
  inputs."jesterwithplugins-v0_5_2".repo = "flake-nimble";
  inputs."jesterwithplugins-v0_5_2".ref = "flake-pinning";
  inputs."jesterwithplugins-v0_5_2".dir = "nimpkgs/j/jesterwithplugins/v0_5_2";
  inputs."jesterwithplugins-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}