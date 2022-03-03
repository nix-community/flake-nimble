{
  description = ''utf-8 string'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ustring-master".type = "github";
  inputs."ustring-master".owner = "riinr";
  inputs."ustring-master".repo = "flake-nimble";
  inputs."ustring-master".ref = "flake-pinning";
  inputs."ustring-master".dir = "nimpkgs/u/ustring/master";
  inputs."ustring-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ustring-0_2_1".type = "github";
  inputs."ustring-0_2_1".owner = "riinr";
  inputs."ustring-0_2_1".repo = "flake-nimble";
  inputs."ustring-0_2_1".ref = "flake-pinning";
  inputs."ustring-0_2_1".dir = "nimpkgs/u/ustring/0_2_1";
  inputs."ustring-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ustring-0_2_2".type = "github";
  inputs."ustring-0_2_2".owner = "riinr";
  inputs."ustring-0_2_2".repo = "flake-nimble";
  inputs."ustring-0_2_2".ref = "flake-pinning";
  inputs."ustring-0_2_2".dir = "nimpkgs/u/ustring/0_2_2";
  inputs."ustring-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ustring-0_2_3".type = "github";
  inputs."ustring-0_2_3".owner = "riinr";
  inputs."ustring-0_2_3".repo = "flake-nimble";
  inputs."ustring-0_2_3".ref = "flake-pinning";
  inputs."ustring-0_2_3".dir = "nimpkgs/u/ustring/0_2_3";
  inputs."ustring-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ustring-0_3_0".type = "github";
  inputs."ustring-0_3_0".owner = "riinr";
  inputs."ustring-0_3_0".repo = "flake-nimble";
  inputs."ustring-0_3_0".ref = "flake-pinning";
  inputs."ustring-0_3_0".dir = "nimpkgs/u/ustring/0_3_0";
  inputs."ustring-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ustring-3_0_0".type = "github";
  inputs."ustring-3_0_0".owner = "riinr";
  inputs."ustring-3_0_0".repo = "flake-nimble";
  inputs."ustring-3_0_0".ref = "flake-pinning";
  inputs."ustring-3_0_0".dir = "nimpkgs/u/ustring/3_0_0";
  inputs."ustring-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}