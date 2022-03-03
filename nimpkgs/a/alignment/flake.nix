{
  description = ''alignment is a library to align strings.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."alignment-master".type = "github";
  inputs."alignment-master".owner = "riinr";
  inputs."alignment-master".repo = "flake-nimble";
  inputs."alignment-master".ref = "flake-pinning";
  inputs."alignment-master".dir = "nimpkgs/a/alignment/master";
  inputs."alignment-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."alignment-1_0_0".type = "github";
  inputs."alignment-1_0_0".owner = "riinr";
  inputs."alignment-1_0_0".repo = "flake-nimble";
  inputs."alignment-1_0_0".ref = "flake-pinning";
  inputs."alignment-1_0_0".dir = "nimpkgs/a/alignment/1_0_0";
  inputs."alignment-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."alignment-1_1_0".type = "github";
  inputs."alignment-1_1_0".owner = "riinr";
  inputs."alignment-1_1_0".repo = "flake-nimble";
  inputs."alignment-1_1_0".ref = "flake-pinning";
  inputs."alignment-1_1_0".dir = "nimpkgs/a/alignment/1_1_0";
  inputs."alignment-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."alignment-v1_1_1".type = "github";
  inputs."alignment-v1_1_1".owner = "riinr";
  inputs."alignment-v1_1_1".repo = "flake-nimble";
  inputs."alignment-v1_1_1".ref = "flake-pinning";
  inputs."alignment-v1_1_1".dir = "nimpkgs/a/alignment/v1_1_1";
  inputs."alignment-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."alignment-v1_1_2".type = "github";
  inputs."alignment-v1_1_2".owner = "riinr";
  inputs."alignment-v1_1_2".repo = "flake-nimble";
  inputs."alignment-v1_1_2".ref = "flake-pinning";
  inputs."alignment-v1_1_2".dir = "nimpkgs/a/alignment/v1_1_2";
  inputs."alignment-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."alignment-v1_2_0".type = "github";
  inputs."alignment-v1_2_0".owner = "riinr";
  inputs."alignment-v1_2_0".repo = "flake-nimble";
  inputs."alignment-v1_2_0".ref = "flake-pinning";
  inputs."alignment-v1_2_0".dir = "nimpkgs/a/alignment/v1_2_0";
  inputs."alignment-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."alignment-v1_2_1".type = "github";
  inputs."alignment-v1_2_1".owner = "riinr";
  inputs."alignment-v1_2_1".repo = "flake-nimble";
  inputs."alignment-v1_2_1".ref = "flake-pinning";
  inputs."alignment-v1_2_1".dir = "nimpkgs/a/alignment/v1_2_1";
  inputs."alignment-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."alignment-v1_3_0".type = "github";
  inputs."alignment-v1_3_0".owner = "riinr";
  inputs."alignment-v1_3_0".repo = "flake-nimble";
  inputs."alignment-v1_3_0".ref = "flake-pinning";
  inputs."alignment-v1_3_0".dir = "nimpkgs/a/alignment/v1_3_0";
  inputs."alignment-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}