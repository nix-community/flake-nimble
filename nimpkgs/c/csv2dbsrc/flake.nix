{
  description = ''create db util sources from csv'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."csv2dbsrc-master".type = "github";
  inputs."csv2dbsrc-master".owner = "riinr";
  inputs."csv2dbsrc-master".repo = "flake-nimble";
  inputs."csv2dbsrc-master".ref = "flake-pinning";
  inputs."csv2dbsrc-master".dir = "nimpkgs/c/csv2dbsrc/master";
  inputs."csv2dbsrc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csv2dbsrc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."csv2dbsrc-v0_1_0".type = "github";
  inputs."csv2dbsrc-v0_1_0".owner = "riinr";
  inputs."csv2dbsrc-v0_1_0".repo = "flake-nimble";
  inputs."csv2dbsrc-v0_1_0".ref = "flake-pinning";
  inputs."csv2dbsrc-v0_1_0".dir = "nimpkgs/c/csv2dbsrc/v0_1_0";
  inputs."csv2dbsrc-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csv2dbsrc-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."csv2dbsrc-v0_1_1".type = "github";
  inputs."csv2dbsrc-v0_1_1".owner = "riinr";
  inputs."csv2dbsrc-v0_1_1".repo = "flake-nimble";
  inputs."csv2dbsrc-v0_1_1".ref = "flake-pinning";
  inputs."csv2dbsrc-v0_1_1".dir = "nimpkgs/c/csv2dbsrc/v0_1_1";
  inputs."csv2dbsrc-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csv2dbsrc-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."csv2dbsrc-v0_2_0".type = "github";
  inputs."csv2dbsrc-v0_2_0".owner = "riinr";
  inputs."csv2dbsrc-v0_2_0".repo = "flake-nimble";
  inputs."csv2dbsrc-v0_2_0".ref = "flake-pinning";
  inputs."csv2dbsrc-v0_2_0".dir = "nimpkgs/c/csv2dbsrc/v0_2_0";
  inputs."csv2dbsrc-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csv2dbsrc-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."csv2dbsrc-v0_2_1".type = "github";
  inputs."csv2dbsrc-v0_2_1".owner = "riinr";
  inputs."csv2dbsrc-v0_2_1".repo = "flake-nimble";
  inputs."csv2dbsrc-v0_2_1".ref = "flake-pinning";
  inputs."csv2dbsrc-v0_2_1".dir = "nimpkgs/c/csv2dbsrc/v0_2_1";
  inputs."csv2dbsrc-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csv2dbsrc-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."csv2dbsrc-v0_2_2".type = "github";
  inputs."csv2dbsrc-v0_2_2".owner = "riinr";
  inputs."csv2dbsrc-v0_2_2".repo = "flake-nimble";
  inputs."csv2dbsrc-v0_2_2".ref = "flake-pinning";
  inputs."csv2dbsrc-v0_2_2".dir = "nimpkgs/c/csv2dbsrc/v0_2_2";
  inputs."csv2dbsrc-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csv2dbsrc-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}