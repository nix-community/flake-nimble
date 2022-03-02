{
  description = ''A Nim implementation of the Stalin Sort algorithm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."stalinsort-master".type = "github";
  inputs."stalinsort-master".owner = "riinr";
  inputs."stalinsort-master".repo = "flake-nimble";
  inputs."stalinsort-master".ref = "flake-pinning";
  inputs."stalinsort-master".dir = "nimpkgs/s/stalinsort/master";
  inputs."stalinsort-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."stalinsort-v0_2_1".type = "github";
  inputs."stalinsort-v0_2_1".owner = "riinr";
  inputs."stalinsort-v0_2_1".repo = "flake-nimble";
  inputs."stalinsort-v0_2_1".ref = "flake-pinning";
  inputs."stalinsort-v0_2_1".dir = "nimpkgs/s/stalinsort/v0_2_1";
  inputs."stalinsort-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."stalinsort-v0_2_2".type = "github";
  inputs."stalinsort-v0_2_2".owner = "riinr";
  inputs."stalinsort-v0_2_2".repo = "flake-nimble";
  inputs."stalinsort-v0_2_2".ref = "flake-pinning";
  inputs."stalinsort-v0_2_2".dir = "nimpkgs/s/stalinsort/v0_2_2";
  inputs."stalinsort-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."stalinsort-v0_3_0".type = "github";
  inputs."stalinsort-v0_3_0".owner = "riinr";
  inputs."stalinsort-v0_3_0".repo = "flake-nimble";
  inputs."stalinsort-v0_3_0".ref = "flake-pinning";
  inputs."stalinsort-v0_3_0".dir = "nimpkgs/s/stalinsort/v0_3_0";
  inputs."stalinsort-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."stalinsort-v0_3_1".type = "github";
  inputs."stalinsort-v0_3_1".owner = "riinr";
  inputs."stalinsort-v0_3_1".repo = "flake-nimble";
  inputs."stalinsort-v0_3_1".ref = "flake-pinning";
  inputs."stalinsort-v0_3_1".dir = "nimpkgs/s/stalinsort/v0_3_1";
  inputs."stalinsort-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."stalinsort-v0_3_2".type = "github";
  inputs."stalinsort-v0_3_2".owner = "riinr";
  inputs."stalinsort-v0_3_2".repo = "flake-nimble";
  inputs."stalinsort-v0_3_2".ref = "flake-pinning";
  inputs."stalinsort-v0_3_2".dir = "nimpkgs/s/stalinsort/v0_3_2";
  inputs."stalinsort-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}