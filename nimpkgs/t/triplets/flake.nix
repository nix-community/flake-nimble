{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."triplets-master".type = "github";
  inputs."triplets-master".owner = "riinr";
  inputs."triplets-master".repo = "flake-nimble";
  inputs."triplets-master".ref = "flake-pinning";
  inputs."triplets-master".dir = "nimpkgs/t/triplets/master";
  inputs."triplets-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."triplets-0_0_1".type = "github";
  inputs."triplets-0_0_1".owner = "riinr";
  inputs."triplets-0_0_1".repo = "flake-nimble";
  inputs."triplets-0_0_1".ref = "flake-pinning";
  inputs."triplets-0_0_1".dir = "nimpkgs/t/triplets/0_0_1";
  inputs."triplets-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."triplets-0_0_2".type = "github";
  inputs."triplets-0_0_2".owner = "riinr";
  inputs."triplets-0_0_2".repo = "flake-nimble";
  inputs."triplets-0_0_2".ref = "flake-pinning";
  inputs."triplets-0_0_2".dir = "nimpkgs/t/triplets/0_0_2";
  inputs."triplets-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."triplets-0_0_3".type = "github";
  inputs."triplets-0_0_3".owner = "riinr";
  inputs."triplets-0_0_3".repo = "flake-nimble";
  inputs."triplets-0_0_3".ref = "flake-pinning";
  inputs."triplets-0_0_3".dir = "nimpkgs/t/triplets/0_0_3";
  inputs."triplets-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."triplets-0_0_4".type = "github";
  inputs."triplets-0_0_4".owner = "riinr";
  inputs."triplets-0_0_4".repo = "flake-nimble";
  inputs."triplets-0_0_4".ref = "flake-pinning";
  inputs."triplets-0_0_4".dir = "nimpkgs/t/triplets/0_0_4";
  inputs."triplets-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."triplets-0_0_5".type = "github";
  inputs."triplets-0_0_5".owner = "riinr";
  inputs."triplets-0_0_5".repo = "flake-nimble";
  inputs."triplets-0_0_5".ref = "flake-pinning";
  inputs."triplets-0_0_5".dir = "nimpkgs/t/triplets/0_0_5";
  inputs."triplets-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."triplets-0_0_6".type = "github";
  inputs."triplets-0_0_6".owner = "riinr";
  inputs."triplets-0_0_6".repo = "flake-nimble";
  inputs."triplets-0_0_6".ref = "flake-pinning";
  inputs."triplets-0_0_6".dir = "nimpkgs/t/triplets/0_0_6";
  inputs."triplets-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."triplets-0_0_7".type = "github";
  inputs."triplets-0_0_7".owner = "riinr";
  inputs."triplets-0_0_7".repo = "flake-nimble";
  inputs."triplets-0_0_7".ref = "flake-pinning";
  inputs."triplets-0_0_7".dir = "nimpkgs/t/triplets/0_0_7";
  inputs."triplets-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."triplets-0_1_0".type = "github";
  inputs."triplets-0_1_0".owner = "riinr";
  inputs."triplets-0_1_0".repo = "flake-nimble";
  inputs."triplets-0_1_0".ref = "flake-pinning";
  inputs."triplets-0_1_0".dir = "nimpkgs/t/triplets/0_1_0";
  inputs."triplets-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."triplets-0_1_1".type = "github";
  inputs."triplets-0_1_1".owner = "riinr";
  inputs."triplets-0_1_1".repo = "flake-nimble";
  inputs."triplets-0_1_1".ref = "flake-pinning";
  inputs."triplets-0_1_1".dir = "nimpkgs/t/triplets/0_1_1";
  inputs."triplets-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}