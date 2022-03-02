{
  description = ''Key/Value storage into a fast file-hash'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."niledb-master".type = "github";
  inputs."niledb-master".owner = "riinr";
  inputs."niledb-master".repo = "flake-nimble";
  inputs."niledb-master".ref = "flake-pinning";
  inputs."niledb-master".dir = "nimpkgs/n/niledb/master";
  inputs."niledb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."niledb-v1_0_0".type = "github";
  inputs."niledb-v1_0_0".owner = "riinr";
  inputs."niledb-v1_0_0".repo = "flake-nimble";
  inputs."niledb-v1_0_0".ref = "flake-pinning";
  inputs."niledb-v1_0_0".dir = "nimpkgs/n/niledb/v1_0_0";
  inputs."niledb-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."niledb-v1_1_0".type = "github";
  inputs."niledb-v1_1_0".owner = "riinr";
  inputs."niledb-v1_1_0".repo = "flake-nimble";
  inputs."niledb-v1_1_0".ref = "flake-pinning";
  inputs."niledb-v1_1_0".dir = "nimpkgs/n/niledb/v1_1_0";
  inputs."niledb-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."niledb-v1_3_0".type = "github";
  inputs."niledb-v1_3_0".owner = "riinr";
  inputs."niledb-v1_3_0".repo = "flake-nimble";
  inputs."niledb-v1_3_0".ref = "flake-pinning";
  inputs."niledb-v1_3_0".dir = "nimpkgs/n/niledb/v1_3_0";
  inputs."niledb-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."niledb-v1_3_1".type = "github";
  inputs."niledb-v1_3_1".owner = "riinr";
  inputs."niledb-v1_3_1".repo = "flake-nimble";
  inputs."niledb-v1_3_1".ref = "flake-pinning";
  inputs."niledb-v1_3_1".dir = "nimpkgs/n/niledb/v1_3_1";
  inputs."niledb-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}