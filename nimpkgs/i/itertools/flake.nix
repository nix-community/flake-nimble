{
  description = ''Itertools for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."itertools-master".type = "github";
  inputs."itertools-master".owner = "riinr";
  inputs."itertools-master".repo = "flake-nimble";
  inputs."itertools-master".ref = "flake-pinning";
  inputs."itertools-master".dir = "nimpkgs/i/itertools/master";
  inputs."itertools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."itertools-v0_1".type = "github";
  inputs."itertools-v0_1".owner = "riinr";
  inputs."itertools-v0_1".repo = "flake-nimble";
  inputs."itertools-v0_1".ref = "flake-pinning";
  inputs."itertools-v0_1".dir = "nimpkgs/i/itertools/v0_1";
  inputs."itertools-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."itertools-v0_1_1".type = "github";
  inputs."itertools-v0_1_1".owner = "riinr";
  inputs."itertools-v0_1_1".repo = "flake-nimble";
  inputs."itertools-v0_1_1".ref = "flake-pinning";
  inputs."itertools-v0_1_1".dir = "nimpkgs/i/itertools/v0_1_1";
  inputs."itertools-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."itertools-v0_2_0".type = "github";
  inputs."itertools-v0_2_0".owner = "riinr";
  inputs."itertools-v0_2_0".repo = "flake-nimble";
  inputs."itertools-v0_2_0".ref = "flake-pinning";
  inputs."itertools-v0_2_0".dir = "nimpkgs/i/itertools/v0_2_0";
  inputs."itertools-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."itertools-v0_2_1".type = "github";
  inputs."itertools-v0_2_1".owner = "riinr";
  inputs."itertools-v0_2_1".repo = "flake-nimble";
  inputs."itertools-v0_2_1".ref = "flake-pinning";
  inputs."itertools-v0_2_1".dir = "nimpkgs/i/itertools/v0_2_1";
  inputs."itertools-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."itertools-v0_2_2".type = "github";
  inputs."itertools-v0_2_2".owner = "riinr";
  inputs."itertools-v0_2_2".repo = "flake-nimble";
  inputs."itertools-v0_2_2".ref = "flake-pinning";
  inputs."itertools-v0_2_2".dir = "nimpkgs/i/itertools/v0_2_2";
  inputs."itertools-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."itertools-v0_3_0".type = "github";
  inputs."itertools-v0_3_0".owner = "riinr";
  inputs."itertools-v0_3_0".repo = "flake-nimble";
  inputs."itertools-v0_3_0".ref = "flake-pinning";
  inputs."itertools-v0_3_0".dir = "nimpkgs/i/itertools/v0_3_0";
  inputs."itertools-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."itertools-v0_3_1".type = "github";
  inputs."itertools-v0_3_1".owner = "riinr";
  inputs."itertools-v0_3_1".repo = "flake-nimble";
  inputs."itertools-v0_3_1".ref = "flake-pinning";
  inputs."itertools-v0_3_1".dir = "nimpkgs/i/itertools/v0_3_1";
  inputs."itertools-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."itertools-v0_4_0".type = "github";
  inputs."itertools-v0_4_0".owner = "riinr";
  inputs."itertools-v0_4_0".repo = "flake-nimble";
  inputs."itertools-v0_4_0".ref = "flake-pinning";
  inputs."itertools-v0_4_0".dir = "nimpkgs/i/itertools/v0_4_0";
  inputs."itertools-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}