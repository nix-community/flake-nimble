{
  description = ''"pointers" to cached AST that instantiate routines when called'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."applicates-master".type = "github";
  inputs."applicates-master".owner = "riinr";
  inputs."applicates-master".repo = "flake-nimble";
  inputs."applicates-master".ref = "flake-pinning";
  inputs."applicates-master".dir = "nimpkgs/a/applicates/master";
  inputs."applicates-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."applicates-0_1_1".type = "github";
  inputs."applicates-0_1_1".owner = "riinr";
  inputs."applicates-0_1_1".repo = "flake-nimble";
  inputs."applicates-0_1_1".ref = "flake-pinning";
  inputs."applicates-0_1_1".dir = "nimpkgs/a/applicates/0_1_1";
  inputs."applicates-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."applicates-v0_1_0".type = "github";
  inputs."applicates-v0_1_0".owner = "riinr";
  inputs."applicates-v0_1_0".repo = "flake-nimble";
  inputs."applicates-v0_1_0".ref = "flake-pinning";
  inputs."applicates-v0_1_0".dir = "nimpkgs/a/applicates/v0_1_0";
  inputs."applicates-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."applicates-v0_1_1".type = "github";
  inputs."applicates-v0_1_1".owner = "riinr";
  inputs."applicates-v0_1_1".repo = "flake-nimble";
  inputs."applicates-v0_1_1".ref = "flake-pinning";
  inputs."applicates-v0_1_1".dir = "nimpkgs/a/applicates/v0_1_1";
  inputs."applicates-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."applicates-v0_2_0".type = "github";
  inputs."applicates-v0_2_0".owner = "riinr";
  inputs."applicates-v0_2_0".repo = "flake-nimble";
  inputs."applicates-v0_2_0".ref = "flake-pinning";
  inputs."applicates-v0_2_0".dir = "nimpkgs/a/applicates/v0_2_0";
  inputs."applicates-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."applicates-v0_3_0".type = "github";
  inputs."applicates-v0_3_0".owner = "riinr";
  inputs."applicates-v0_3_0".repo = "flake-nimble";
  inputs."applicates-v0_3_0".ref = "flake-pinning";
  inputs."applicates-v0_3_0".dir = "nimpkgs/a/applicates/v0_3_0";
  inputs."applicates-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}