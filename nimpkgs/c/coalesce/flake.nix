{
  description = ''A nil coalescing operator ?? for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."coalesce-master".type = "github";
  inputs."coalesce-master".owner = "riinr";
  inputs."coalesce-master".repo = "flake-nimble";
  inputs."coalesce-master".ref = "flake-pinning";
  inputs."coalesce-master".dir = "nimpkgs/c/coalesce/master";
  inputs."coalesce-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."coalesce-v0_1_0".type = "github";
  inputs."coalesce-v0_1_0".owner = "riinr";
  inputs."coalesce-v0_1_0".repo = "flake-nimble";
  inputs."coalesce-v0_1_0".ref = "flake-pinning";
  inputs."coalesce-v0_1_0".dir = "nimpkgs/c/coalesce/v0_1_0";
  inputs."coalesce-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."coalesce-v0_2_0".type = "github";
  inputs."coalesce-v0_2_0".owner = "riinr";
  inputs."coalesce-v0_2_0".repo = "flake-nimble";
  inputs."coalesce-v0_2_0".ref = "flake-pinning";
  inputs."coalesce-v0_2_0".dir = "nimpkgs/c/coalesce/v0_2_0";
  inputs."coalesce-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."coalesce-v0_3_0".type = "github";
  inputs."coalesce-v0_3_0".owner = "riinr";
  inputs."coalesce-v0_3_0".repo = "flake-nimble";
  inputs."coalesce-v0_3_0".ref = "flake-pinning";
  inputs."coalesce-v0_3_0".dir = "nimpkgs/c/coalesce/v0_3_0";
  inputs."coalesce-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."coalesce-v0_3_1".type = "github";
  inputs."coalesce-v0_3_1".owner = "riinr";
  inputs."coalesce-v0_3_1".repo = "flake-nimble";
  inputs."coalesce-v0_3_1".ref = "flake-pinning";
  inputs."coalesce-v0_3_1".dir = "nimpkgs/c/coalesce/v0_3_1";
  inputs."coalesce-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."coalesce-v0_3_2".type = "github";
  inputs."coalesce-v0_3_2".owner = "riinr";
  inputs."coalesce-v0_3_2".repo = "flake-nimble";
  inputs."coalesce-v0_3_2".ref = "flake-pinning";
  inputs."coalesce-v0_3_2".dir = "nimpkgs/c/coalesce/v0_3_2";
  inputs."coalesce-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}