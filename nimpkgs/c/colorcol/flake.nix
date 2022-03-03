{
  description = ''Kakoune plugin for color preview'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."colorcol-master".type = "github";
  inputs."colorcol-master".owner = "riinr";
  inputs."colorcol-master".repo = "flake-nimble";
  inputs."colorcol-master".ref = "flake-pinning";
  inputs."colorcol-master".dir = "nimpkgs/c/colorcol/master";
  inputs."colorcol-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."colorcol-v0_1_1".type = "github";
  inputs."colorcol-v0_1_1".owner = "riinr";
  inputs."colorcol-v0_1_1".repo = "flake-nimble";
  inputs."colorcol-v0_1_1".ref = "flake-pinning";
  inputs."colorcol-v0_1_1".dir = "nimpkgs/c/colorcol/v0_1_1";
  inputs."colorcol-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."colorcol-v0_2_0".type = "github";
  inputs."colorcol-v0_2_0".owner = "riinr";
  inputs."colorcol-v0_2_0".repo = "flake-nimble";
  inputs."colorcol-v0_2_0".ref = "flake-pinning";
  inputs."colorcol-v0_2_0".dir = "nimpkgs/c/colorcol/v0_2_0";
  inputs."colorcol-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."colorcol-v0_3_0".type = "github";
  inputs."colorcol-v0_3_0".owner = "riinr";
  inputs."colorcol-v0_3_0".repo = "flake-nimble";
  inputs."colorcol-v0_3_0".ref = "flake-pinning";
  inputs."colorcol-v0_3_0".dir = "nimpkgs/c/colorcol/v0_3_0";
  inputs."colorcol-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."colorcol-v0_3_1".type = "github";
  inputs."colorcol-v0_3_1".owner = "riinr";
  inputs."colorcol-v0_3_1".repo = "flake-nimble";
  inputs."colorcol-v0_3_1".ref = "flake-pinning";
  inputs."colorcol-v0_3_1".dir = "nimpkgs/c/colorcol/v0_3_1";
  inputs."colorcol-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."colorcol-v0_3_2".type = "github";
  inputs."colorcol-v0_3_2".owner = "riinr";
  inputs."colorcol-v0_3_2".repo = "flake-nimble";
  inputs."colorcol-v0_3_2".ref = "flake-pinning";
  inputs."colorcol-v0_3_2".dir = "nimpkgs/c/colorcol/v0_3_2";
  inputs."colorcol-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."colorcol-v0_3_3".type = "github";
  inputs."colorcol-v0_3_3".owner = "riinr";
  inputs."colorcol-v0_3_3".repo = "flake-nimble";
  inputs."colorcol-v0_3_3".ref = "flake-pinning";
  inputs."colorcol-v0_3_3".dir = "nimpkgs/c/colorcol/v0_3_3";
  inputs."colorcol-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."colorcol-v0_3_4".type = "github";
  inputs."colorcol-v0_3_4".owner = "riinr";
  inputs."colorcol-v0_3_4".repo = "flake-nimble";
  inputs."colorcol-v0_3_4".ref = "flake-pinning";
  inputs."colorcol-v0_3_4".dir = "nimpkgs/c/colorcol/v0_3_4";
  inputs."colorcol-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."colorcol-v0_4_0".type = "github";
  inputs."colorcol-v0_4_0".owner = "riinr";
  inputs."colorcol-v0_4_0".repo = "flake-nimble";
  inputs."colorcol-v0_4_0".ref = "flake-pinning";
  inputs."colorcol-v0_4_0".dir = "nimpkgs/c/colorcol/v0_4_0";
  inputs."colorcol-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."colorcol-v0_4_1".type = "github";
  inputs."colorcol-v0_4_1".owner = "riinr";
  inputs."colorcol-v0_4_1".repo = "flake-nimble";
  inputs."colorcol-v0_4_1".ref = "flake-pinning";
  inputs."colorcol-v0_4_1".dir = "nimpkgs/c/colorcol/v0_4_1";
  inputs."colorcol-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."colorcol-v0_5_0".type = "github";
  inputs."colorcol-v0_5_0".owner = "riinr";
  inputs."colorcol-v0_5_0".repo = "flake-nimble";
  inputs."colorcol-v0_5_0".ref = "flake-pinning";
  inputs."colorcol-v0_5_0".dir = "nimpkgs/c/colorcol/v0_5_0";
  inputs."colorcol-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."colorcol-v0_5_1".type = "github";
  inputs."colorcol-v0_5_1".owner = "riinr";
  inputs."colorcol-v0_5_1".repo = "flake-nimble";
  inputs."colorcol-v0_5_1".ref = "flake-pinning";
  inputs."colorcol-v0_5_1".dir = "nimpkgs/c/colorcol/v0_5_1";
  inputs."colorcol-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."colorcol-v0_5_2".type = "github";
  inputs."colorcol-v0_5_2".owner = "riinr";
  inputs."colorcol-v0_5_2".repo = "flake-nimble";
  inputs."colorcol-v0_5_2".ref = "flake-pinning";
  inputs."colorcol-v0_5_2".dir = "nimpkgs/c/colorcol/v0_5_2";
  inputs."colorcol-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}