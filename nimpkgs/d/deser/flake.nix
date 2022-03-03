{
  description = ''De/serialization library for Nim '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."deser-master".type = "github";
  inputs."deser-master".owner = "riinr";
  inputs."deser-master".repo = "flake-nimble";
  inputs."deser-master".ref = "flake-pinning";
  inputs."deser-master".dir = "nimpkgs/d/deser/master";
  inputs."deser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."deser-v0_1_0".type = "github";
  inputs."deser-v0_1_0".owner = "riinr";
  inputs."deser-v0_1_0".repo = "flake-nimble";
  inputs."deser-v0_1_0".ref = "flake-pinning";
  inputs."deser-v0_1_0".dir = "nimpkgs/d/deser/v0_1_0";
  inputs."deser-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."deser-v0_1_1".type = "github";
  inputs."deser-v0_1_1".owner = "riinr";
  inputs."deser-v0_1_1".repo = "flake-nimble";
  inputs."deser-v0_1_1".ref = "flake-pinning";
  inputs."deser-v0_1_1".dir = "nimpkgs/d/deser/v0_1_1";
  inputs."deser-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."deser-v0_1_1-alpha_1".type = "github";
  inputs."deser-v0_1_1-alpha_1".owner = "riinr";
  inputs."deser-v0_1_1-alpha_1".repo = "flake-nimble";
  inputs."deser-v0_1_1-alpha_1".ref = "flake-pinning";
  inputs."deser-v0_1_1-alpha_1".dir = "nimpkgs/d/deser/v0_1_1-alpha_1";
  inputs."deser-v0_1_1-alpha_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_1-alpha_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."deser-v0_1_1-alpha_2".type = "github";
  inputs."deser-v0_1_1-alpha_2".owner = "riinr";
  inputs."deser-v0_1_1-alpha_2".repo = "flake-nimble";
  inputs."deser-v0_1_1-alpha_2".ref = "flake-pinning";
  inputs."deser-v0_1_1-alpha_2".dir = "nimpkgs/d/deser/v0_1_1-alpha_2";
  inputs."deser-v0_1_1-alpha_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_1-alpha_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."deser-v0_1_2".type = "github";
  inputs."deser-v0_1_2".owner = "riinr";
  inputs."deser-v0_1_2".repo = "flake-nimble";
  inputs."deser-v0_1_2".ref = "flake-pinning";
  inputs."deser-v0_1_2".dir = "nimpkgs/d/deser/v0_1_2";
  inputs."deser-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."deser-v0_1_3".type = "github";
  inputs."deser-v0_1_3".owner = "riinr";
  inputs."deser-v0_1_3".repo = "flake-nimble";
  inputs."deser-v0_1_3".ref = "flake-pinning";
  inputs."deser-v0_1_3".dir = "nimpkgs/d/deser/v0_1_3";
  inputs."deser-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."deser-v0_1_4".type = "github";
  inputs."deser-v0_1_4".owner = "riinr";
  inputs."deser-v0_1_4".repo = "flake-nimble";
  inputs."deser-v0_1_4".ref = "flake-pinning";
  inputs."deser-v0_1_4".dir = "nimpkgs/d/deser/v0_1_4";
  inputs."deser-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."deser-v0_1_5".type = "github";
  inputs."deser-v0_1_5".owner = "riinr";
  inputs."deser-v0_1_5".repo = "flake-nimble";
  inputs."deser-v0_1_5".ref = "flake-pinning";
  inputs."deser-v0_1_5".dir = "nimpkgs/d/deser/v0_1_5";
  inputs."deser-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."deser-v0_1_7".type = "github";
  inputs."deser-v0_1_7".owner = "riinr";
  inputs."deser-v0_1_7".repo = "flake-nimble";
  inputs."deser-v0_1_7".ref = "flake-pinning";
  inputs."deser-v0_1_7".dir = "nimpkgs/d/deser/v0_1_7";
  inputs."deser-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}