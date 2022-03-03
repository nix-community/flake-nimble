{
  description = ''A macro collection for creating DSL in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
    inputs."dslutils-0_1_1".type = "github";
  inputs."dslutils-0_1_1".owner = "riinr";
  inputs."dslutils-0_1_1".repo = "flake-nimble";
  inputs."dslutils-0_1_1".ref = "flake-pinning";
  inputs."dslutils-0_1_1".dir = "nimpkgs/d/dslutils/0_1_1";
  inputs."dslutils-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dslutils-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dslutils-0_1_2".type = "github";
  inputs."dslutils-0_1_2".owner = "riinr";
  inputs."dslutils-0_1_2".repo = "flake-nimble";
  inputs."dslutils-0_1_2".ref = "flake-pinning";
  inputs."dslutils-0_1_2".dir = "nimpkgs/d/dslutils/0_1_2";
  inputs."dslutils-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dslutils-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dslutils-v0_1_3".type = "github";
  inputs."dslutils-v0_1_3".owner = "riinr";
  inputs."dslutils-v0_1_3".repo = "flake-nimble";
  inputs."dslutils-v0_1_3".ref = "flake-pinning";
  inputs."dslutils-v0_1_3".dir = "nimpkgs/d/dslutils/v0_1_3";
  inputs."dslutils-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dslutils-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}