{
  description = ''BSON Binary JSON Serialization'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bson-master".type = "github";
  inputs."bson-master".owner = "riinr";
  inputs."bson-master".repo = "flake-nimble";
  inputs."bson-master".ref = "flake-pinning";
  inputs."bson-master".dir = "nimpkgs/b/bson/master";
  inputs."bson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bson-v1_0_0".type = "github";
  inputs."bson-v1_0_0".owner = "riinr";
  inputs."bson-v1_0_0".repo = "flake-nimble";
  inputs."bson-v1_0_0".ref = "flake-pinning";
  inputs."bson-v1_0_0".dir = "nimpkgs/b/bson/v1_0_0";
  inputs."bson-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bson-v1_0_1".type = "github";
  inputs."bson-v1_0_1".owner = "riinr";
  inputs."bson-v1_0_1".repo = "flake-nimble";
  inputs."bson-v1_0_1".ref = "flake-pinning";
  inputs."bson-v1_0_1".dir = "nimpkgs/b/bson/v1_0_1";
  inputs."bson-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bson-v1_1_1".type = "github";
  inputs."bson-v1_1_1".owner = "riinr";
  inputs."bson-v1_1_1".repo = "flake-nimble";
  inputs."bson-v1_1_1".ref = "flake-pinning";
  inputs."bson-v1_1_1".dir = "nimpkgs/b/bson/v1_1_1";
  inputs."bson-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bson-v1_1_2".type = "github";
  inputs."bson-v1_1_2".owner = "riinr";
  inputs."bson-v1_1_2".repo = "flake-nimble";
  inputs."bson-v1_1_2".ref = "flake-pinning";
  inputs."bson-v1_1_2".dir = "nimpkgs/b/bson/v1_1_2";
  inputs."bson-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}