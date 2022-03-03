{
  description = ''Implementation of the Fletcher checksum algorithm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fletcher-master".type = "github";
  inputs."fletcher-master".owner = "riinr";
  inputs."fletcher-master".repo = "flake-nimble";
  inputs."fletcher-master".ref = "flake-pinning";
  inputs."fletcher-master".dir = "nimpkgs/f/fletcher/master";
  inputs."fletcher-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fletcher-0_1_0".type = "github";
  inputs."fletcher-0_1_0".owner = "riinr";
  inputs."fletcher-0_1_0".repo = "flake-nimble";
  inputs."fletcher-0_1_0".ref = "flake-pinning";
  inputs."fletcher-0_1_0".dir = "nimpkgs/f/fletcher/0_1_0";
  inputs."fletcher-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fletcher-0_2_2".type = "github";
  inputs."fletcher-0_2_2".owner = "riinr";
  inputs."fletcher-0_2_2".repo = "flake-nimble";
  inputs."fletcher-0_2_2".ref = "flake-pinning";
  inputs."fletcher-0_2_2".dir = "nimpkgs/f/fletcher/0_2_2";
  inputs."fletcher-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fletcher-0_3_0".type = "github";
  inputs."fletcher-0_3_0".owner = "riinr";
  inputs."fletcher-0_3_0".repo = "flake-nimble";
  inputs."fletcher-0_3_0".ref = "flake-pinning";
  inputs."fletcher-0_3_0".dir = "nimpkgs/f/fletcher/0_3_0";
  inputs."fletcher-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fletcher-0_3_1".type = "github";
  inputs."fletcher-0_3_1".owner = "riinr";
  inputs."fletcher-0_3_1".repo = "flake-nimble";
  inputs."fletcher-0_3_1".ref = "flake-pinning";
  inputs."fletcher-0_3_1".dir = "nimpkgs/f/fletcher/0_3_1";
  inputs."fletcher-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}