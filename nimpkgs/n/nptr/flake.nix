{
  description = ''Nim lang smart pointers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nptr-develop".type = "github";
  inputs."nptr-develop".owner = "riinr";
  inputs."nptr-develop".repo = "flake-nimble";
  inputs."nptr-develop".ref = "flake-pinning";
  inputs."nptr-develop".dir = "nimpkgs/n/nptr/develop";
  inputs."nptr-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nptr-main".type = "github";
  inputs."nptr-main".owner = "riinr";
  inputs."nptr-main".repo = "flake-nimble";
  inputs."nptr-main".ref = "flake-pinning";
  inputs."nptr-main".dir = "nimpkgs/n/nptr/main";
  inputs."nptr-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nptr-v0_1_0".type = "github";
  inputs."nptr-v0_1_0".owner = "riinr";
  inputs."nptr-v0_1_0".repo = "flake-nimble";
  inputs."nptr-v0_1_0".ref = "flake-pinning";
  inputs."nptr-v0_1_0".dir = "nimpkgs/n/nptr/v0_1_0";
  inputs."nptr-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nptr-v0_1_1".type = "github";
  inputs."nptr-v0_1_1".owner = "riinr";
  inputs."nptr-v0_1_1".repo = "flake-nimble";
  inputs."nptr-v0_1_1".ref = "flake-pinning";
  inputs."nptr-v0_1_1".dir = "nimpkgs/n/nptr/v0_1_1";
  inputs."nptr-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nptr-v0_1_10".type = "github";
  inputs."nptr-v0_1_10".owner = "riinr";
  inputs."nptr-v0_1_10".repo = "flake-nimble";
  inputs."nptr-v0_1_10".ref = "flake-pinning";
  inputs."nptr-v0_1_10".dir = "nimpkgs/n/nptr/v0_1_10";
  inputs."nptr-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nptr-v0_1_2".type = "github";
  inputs."nptr-v0_1_2".owner = "riinr";
  inputs."nptr-v0_1_2".repo = "flake-nimble";
  inputs."nptr-v0_1_2".ref = "flake-pinning";
  inputs."nptr-v0_1_2".dir = "nimpkgs/n/nptr/v0_1_2";
  inputs."nptr-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nptr-v0_1_3".type = "github";
  inputs."nptr-v0_1_3".owner = "riinr";
  inputs."nptr-v0_1_3".repo = "flake-nimble";
  inputs."nptr-v0_1_3".ref = "flake-pinning";
  inputs."nptr-v0_1_3".dir = "nimpkgs/n/nptr/v0_1_3";
  inputs."nptr-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nptr-v0_1_4".type = "github";
  inputs."nptr-v0_1_4".owner = "riinr";
  inputs."nptr-v0_1_4".repo = "flake-nimble";
  inputs."nptr-v0_1_4".ref = "flake-pinning";
  inputs."nptr-v0_1_4".dir = "nimpkgs/n/nptr/v0_1_4";
  inputs."nptr-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nptr-v0_1_5".type = "github";
  inputs."nptr-v0_1_5".owner = "riinr";
  inputs."nptr-v0_1_5".repo = "flake-nimble";
  inputs."nptr-v0_1_5".ref = "flake-pinning";
  inputs."nptr-v0_1_5".dir = "nimpkgs/n/nptr/v0_1_5";
  inputs."nptr-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nptr-v0_1_6".type = "github";
  inputs."nptr-v0_1_6".owner = "riinr";
  inputs."nptr-v0_1_6".repo = "flake-nimble";
  inputs."nptr-v0_1_6".ref = "flake-pinning";
  inputs."nptr-v0_1_6".dir = "nimpkgs/n/nptr/v0_1_6";
  inputs."nptr-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nptr-v0_1_7".type = "github";
  inputs."nptr-v0_1_7".owner = "riinr";
  inputs."nptr-v0_1_7".repo = "flake-nimble";
  inputs."nptr-v0_1_7".ref = "flake-pinning";
  inputs."nptr-v0_1_7".dir = "nimpkgs/n/nptr/v0_1_7";
  inputs."nptr-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nptr-v0_1_8".type = "github";
  inputs."nptr-v0_1_8".owner = "riinr";
  inputs."nptr-v0_1_8".repo = "flake-nimble";
  inputs."nptr-v0_1_8".ref = "flake-pinning";
  inputs."nptr-v0_1_8".dir = "nimpkgs/n/nptr/v0_1_8";
  inputs."nptr-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nptr-v0_1_9".type = "github";
  inputs."nptr-v0_1_9".owner = "riinr";
  inputs."nptr-v0_1_9".repo = "flake-nimble";
  inputs."nptr-v0_1_9".ref = "flake-pinning";
  inputs."nptr-v0_1_9".dir = "nimpkgs/n/nptr/v0_1_9";
  inputs."nptr-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nptr-v0_2_0".type = "github";
  inputs."nptr-v0_2_0".owner = "riinr";
  inputs."nptr-v0_2_0".repo = "flake-nimble";
  inputs."nptr-v0_2_0".ref = "flake-pinning";
  inputs."nptr-v0_2_0".dir = "nimpkgs/n/nptr/v0_2_0";
  inputs."nptr-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}