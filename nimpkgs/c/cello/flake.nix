{
  description = ''String algorithms with succinct data structures'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."cello-master".type = "github";
  inputs."cello-master".owner = "riinr";
  inputs."cello-master".repo = "flake-nimble";
  inputs."cello-master".ref = "flake-pinning";
  inputs."cello-master".dir = "nimpkgs/c/cello/master";
  inputs."cello-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cello-0_1_0".type = "github";
  inputs."cello-0_1_0".owner = "riinr";
  inputs."cello-0_1_0".repo = "flake-nimble";
  inputs."cello-0_1_0".ref = "flake-pinning";
  inputs."cello-0_1_0".dir = "nimpkgs/c/cello/0_1_0";
  inputs."cello-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cello-0_1_1".type = "github";
  inputs."cello-0_1_1".owner = "riinr";
  inputs."cello-0_1_1".repo = "flake-nimble";
  inputs."cello-0_1_1".ref = "flake-pinning";
  inputs."cello-0_1_1".dir = "nimpkgs/c/cello/0_1_1";
  inputs."cello-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cello-0_1_2".type = "github";
  inputs."cello-0_1_2".owner = "riinr";
  inputs."cello-0_1_2".repo = "flake-nimble";
  inputs."cello-0_1_2".ref = "flake-pinning";
  inputs."cello-0_1_2".dir = "nimpkgs/c/cello/0_1_2";
  inputs."cello-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cello-0_1_3".type = "github";
  inputs."cello-0_1_3".owner = "riinr";
  inputs."cello-0_1_3".repo = "flake-nimble";
  inputs."cello-0_1_3".ref = "flake-pinning";
  inputs."cello-0_1_3".dir = "nimpkgs/c/cello/0_1_3";
  inputs."cello-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cello-0_1_4".type = "github";
  inputs."cello-0_1_4".owner = "riinr";
  inputs."cello-0_1_4".repo = "flake-nimble";
  inputs."cello-0_1_4".ref = "flake-pinning";
  inputs."cello-0_1_4".dir = "nimpkgs/c/cello/0_1_4";
  inputs."cello-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cello-0_1_5".type = "github";
  inputs."cello-0_1_5".owner = "riinr";
  inputs."cello-0_1_5".repo = "flake-nimble";
  inputs."cello-0_1_5".ref = "flake-pinning";
  inputs."cello-0_1_5".dir = "nimpkgs/c/cello/0_1_5";
  inputs."cello-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cello-0_1_6".type = "github";
  inputs."cello-0_1_6".owner = "riinr";
  inputs."cello-0_1_6".repo = "flake-nimble";
  inputs."cello-0_1_6".ref = "flake-pinning";
  inputs."cello-0_1_6".dir = "nimpkgs/c/cello/0_1_6";
  inputs."cello-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cello-0_2_0".type = "github";
  inputs."cello-0_2_0".owner = "riinr";
  inputs."cello-0_2_0".repo = "flake-nimble";
  inputs."cello-0_2_0".ref = "flake-pinning";
  inputs."cello-0_2_0".dir = "nimpkgs/c/cello/0_2_0";
  inputs."cello-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cello-0_3_0".type = "github";
  inputs."cello-0_3_0".owner = "riinr";
  inputs."cello-0_3_0".repo = "flake-nimble";
  inputs."cello-0_3_0".ref = "flake-pinning";
  inputs."cello-0_3_0".dir = "nimpkgs/c/cello/0_3_0";
  inputs."cello-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}