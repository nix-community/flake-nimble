{
  description = ''Postgres utility functions'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pg_util-master".type = "github";
  inputs."pg_util-master".owner = "riinr";
  inputs."pg_util-master".repo = "flake-nimble";
  inputs."pg_util-master".ref = "flake-pinning";
  inputs."pg_util-master".dir = "nimpkgs/p/pg_util/master";
  inputs."pg_util-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg_util-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pg_util-v0_1_0".type = "github";
  inputs."pg_util-v0_1_0".owner = "riinr";
  inputs."pg_util-v0_1_0".repo = "flake-nimble";
  inputs."pg_util-v0_1_0".ref = "flake-pinning";
  inputs."pg_util-v0_1_0".dir = "nimpkgs/p/pg_util/v0_1_0";
  inputs."pg_util-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg_util-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pg_util-v0_1_1".type = "github";
  inputs."pg_util-v0_1_1".owner = "riinr";
  inputs."pg_util-v0_1_1".repo = "flake-nimble";
  inputs."pg_util-v0_1_1".ref = "flake-pinning";
  inputs."pg_util-v0_1_1".dir = "nimpkgs/p/pg_util/v0_1_1";
  inputs."pg_util-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg_util-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pg_util-v0_1_2".type = "github";
  inputs."pg_util-v0_1_2".owner = "riinr";
  inputs."pg_util-v0_1_2".repo = "flake-nimble";
  inputs."pg_util-v0_1_2".ref = "flake-pinning";
  inputs."pg_util-v0_1_2".dir = "nimpkgs/p/pg_util/v0_1_2";
  inputs."pg_util-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg_util-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pg_util-v0_1_3".type = "github";
  inputs."pg_util-v0_1_3".owner = "riinr";
  inputs."pg_util-v0_1_3".repo = "flake-nimble";
  inputs."pg_util-v0_1_3".ref = "flake-pinning";
  inputs."pg_util-v0_1_3".dir = "nimpkgs/p/pg_util/v0_1_3";
  inputs."pg_util-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg_util-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}