{
  description = ''2d collision library for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bumpy-master".type = "github";
  inputs."bumpy-master".owner = "riinr";
  inputs."bumpy-master".repo = "flake-nimble";
  inputs."bumpy-master".ref = "flake-pinning";
  inputs."bumpy-master".dir = "nimpkgs/b/bumpy/master";
  inputs."bumpy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bumpy-0_1_0".type = "github";
  inputs."bumpy-0_1_0".owner = "riinr";
  inputs."bumpy-0_1_0".repo = "flake-nimble";
  inputs."bumpy-0_1_0".ref = "flake-pinning";
  inputs."bumpy-0_1_0".dir = "nimpkgs/b/bumpy/0_1_0";
  inputs."bumpy-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bumpy-0_2_0".type = "github";
  inputs."bumpy-0_2_0".owner = "riinr";
  inputs."bumpy-0_2_0".repo = "flake-nimble";
  inputs."bumpy-0_2_0".ref = "flake-pinning";
  inputs."bumpy-0_2_0".dir = "nimpkgs/b/bumpy/0_2_0";
  inputs."bumpy-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bumpy-0_2_1".type = "github";
  inputs."bumpy-0_2_1".owner = "riinr";
  inputs."bumpy-0_2_1".repo = "flake-nimble";
  inputs."bumpy-0_2_1".ref = "flake-pinning";
  inputs."bumpy-0_2_1".dir = "nimpkgs/b/bumpy/0_2_1";
  inputs."bumpy-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bumpy-1_0_0".type = "github";
  inputs."bumpy-1_0_0".owner = "riinr";
  inputs."bumpy-1_0_0".repo = "flake-nimble";
  inputs."bumpy-1_0_0".ref = "flake-pinning";
  inputs."bumpy-1_0_0".dir = "nimpkgs/b/bumpy/1_0_0";
  inputs."bumpy-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bumpy-1_0_1".type = "github";
  inputs."bumpy-1_0_1".owner = "riinr";
  inputs."bumpy-1_0_1".repo = "flake-nimble";
  inputs."bumpy-1_0_1".ref = "flake-pinning";
  inputs."bumpy-1_0_1".dir = "nimpkgs/b/bumpy/1_0_1";
  inputs."bumpy-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bumpy-1_0_2".type = "github";
  inputs."bumpy-1_0_2".owner = "riinr";
  inputs."bumpy-1_0_2".repo = "flake-nimble";
  inputs."bumpy-1_0_2".ref = "flake-pinning";
  inputs."bumpy-1_0_2".dir = "nimpkgs/b/bumpy/1_0_2";
  inputs."bumpy-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bumpy-1_0_3".type = "github";
  inputs."bumpy-1_0_3".owner = "riinr";
  inputs."bumpy-1_0_3".repo = "flake-nimble";
  inputs."bumpy-1_0_3".ref = "flake-pinning";
  inputs."bumpy-1_0_3".dir = "nimpkgs/b/bumpy/1_0_3";
  inputs."bumpy-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}