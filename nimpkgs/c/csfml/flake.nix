{
  description = ''Bindings for Simple and Fast Multimedia Library (through CSFML)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."csfml-master".type = "github";
  inputs."csfml-master".owner = "riinr";
  inputs."csfml-master".repo = "flake-nimble";
  inputs."csfml-master".ref = "flake-pinning";
  inputs."csfml-master".dir = "nimpkgs/c/csfml/master";
  inputs."csfml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."csfml-v2_1_0".type = "github";
  inputs."csfml-v2_1_0".owner = "riinr";
  inputs."csfml-v2_1_0".repo = "flake-nimble";
  inputs."csfml-v2_1_0".ref = "flake-pinning";
  inputs."csfml-v2_1_0".dir = "nimpkgs/c/csfml/v2_1_0";
  inputs."csfml-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."csfml-v2_1_1".type = "github";
  inputs."csfml-v2_1_1".owner = "riinr";
  inputs."csfml-v2_1_1".repo = "flake-nimble";
  inputs."csfml-v2_1_1".ref = "flake-pinning";
  inputs."csfml-v2_1_1".dir = "nimpkgs/c/csfml/v2_1_1";
  inputs."csfml-v2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."csfml-v2_1_2".type = "github";
  inputs."csfml-v2_1_2".owner = "riinr";
  inputs."csfml-v2_1_2".repo = "flake-nimble";
  inputs."csfml-v2_1_2".ref = "flake-pinning";
  inputs."csfml-v2_1_2".dir = "nimpkgs/c/csfml/v2_1_2";
  inputs."csfml-v2_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."csfml-v2_1_3".type = "github";
  inputs."csfml-v2_1_3".owner = "riinr";
  inputs."csfml-v2_1_3".repo = "flake-nimble";
  inputs."csfml-v2_1_3".ref = "flake-pinning";
  inputs."csfml-v2_1_3".dir = "nimpkgs/c/csfml/v2_1_3";
  inputs."csfml-v2_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."csfml-v2_2_0".type = "github";
  inputs."csfml-v2_2_0".owner = "riinr";
  inputs."csfml-v2_2_0".repo = "flake-nimble";
  inputs."csfml-v2_2_0".ref = "flake-pinning";
  inputs."csfml-v2_2_0".dir = "nimpkgs/c/csfml/v2_2_0";
  inputs."csfml-v2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."csfml-v2_3_0".type = "github";
  inputs."csfml-v2_3_0".owner = "riinr";
  inputs."csfml-v2_3_0".repo = "flake-nimble";
  inputs."csfml-v2_3_0".ref = "flake-pinning";
  inputs."csfml-v2_3_0".dir = "nimpkgs/c/csfml/v2_3_0";
  inputs."csfml-v2_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."csfml-v2_3_1".type = "github";
  inputs."csfml-v2_3_1".owner = "riinr";
  inputs."csfml-v2_3_1".repo = "flake-nimble";
  inputs."csfml-v2_3_1".ref = "flake-pinning";
  inputs."csfml-v2_3_1".dir = "nimpkgs/c/csfml/v2_3_1";
  inputs."csfml-v2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."csfml-v2_4_0".type = "github";
  inputs."csfml-v2_4_0".owner = "riinr";
  inputs."csfml-v2_4_0".repo = "flake-nimble";
  inputs."csfml-v2_4_0".ref = "flake-pinning";
  inputs."csfml-v2_4_0".dir = "nimpkgs/c/csfml/v2_4_0";
  inputs."csfml-v2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."csfml-v2_5_0".type = "github";
  inputs."csfml-v2_5_0".owner = "riinr";
  inputs."csfml-v2_5_0".repo = "flake-nimble";
  inputs."csfml-v2_5_0".ref = "flake-pinning";
  inputs."csfml-v2_5_0".dir = "nimpkgs/c/csfml/v2_5_0";
  inputs."csfml-v2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}