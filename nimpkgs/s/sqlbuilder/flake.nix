{
  description = ''A SQLbuilder with support for NULL values'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sqlbuilder-master".type = "github";
  inputs."sqlbuilder-master".owner = "riinr";
  inputs."sqlbuilder-master".repo = "flake-nimble";
  inputs."sqlbuilder-master".ref = "flake-pinning";
  inputs."sqlbuilder-master".dir = "nimpkgs/s/sqlbuilder/master";
  inputs."sqlbuilder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sqlbuilder-v0_1_1".type = "github";
  inputs."sqlbuilder-v0_1_1".owner = "riinr";
  inputs."sqlbuilder-v0_1_1".repo = "flake-nimble";
  inputs."sqlbuilder-v0_1_1".ref = "flake-pinning";
  inputs."sqlbuilder-v0_1_1".dir = "nimpkgs/s/sqlbuilder/v0_1_1";
  inputs."sqlbuilder-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sqlbuilder-v0_1_2".type = "github";
  inputs."sqlbuilder-v0_1_2".owner = "riinr";
  inputs."sqlbuilder-v0_1_2".repo = "flake-nimble";
  inputs."sqlbuilder-v0_1_2".ref = "flake-pinning";
  inputs."sqlbuilder-v0_1_2".dir = "nimpkgs/s/sqlbuilder/v0_1_2";
  inputs."sqlbuilder-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sqlbuilder-v0_2_0".type = "github";
  inputs."sqlbuilder-v0_2_0".owner = "riinr";
  inputs."sqlbuilder-v0_2_0".repo = "flake-nimble";
  inputs."sqlbuilder-v0_2_0".ref = "flake-pinning";
  inputs."sqlbuilder-v0_2_0".dir = "nimpkgs/s/sqlbuilder/v0_2_0";
  inputs."sqlbuilder-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sqlbuilder-v0_3_0".type = "github";
  inputs."sqlbuilder-v0_3_0".owner = "riinr";
  inputs."sqlbuilder-v0_3_0".repo = "flake-nimble";
  inputs."sqlbuilder-v0_3_0".ref = "flake-pinning";
  inputs."sqlbuilder-v0_3_0".dir = "nimpkgs/s/sqlbuilder/v0_3_0";
  inputs."sqlbuilder-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sqlbuilder-v0_3_1".type = "github";
  inputs."sqlbuilder-v0_3_1".owner = "riinr";
  inputs."sqlbuilder-v0_3_1".repo = "flake-nimble";
  inputs."sqlbuilder-v0_3_1".ref = "flake-pinning";
  inputs."sqlbuilder-v0_3_1".dir = "nimpkgs/s/sqlbuilder/v0_3_1";
  inputs."sqlbuilder-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}