{
  description = ''Implement dynamic dispatch through vtable, should works for dynlib.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
    inputs."vtable-v0_1_0".type = "github";
  inputs."vtable-v0_1_0".owner = "riinr";
  inputs."vtable-v0_1_0".repo = "flake-nimble";
  inputs."vtable-v0_1_0".ref = "flake-pinning";
  inputs."vtable-v0_1_0".dir = "nimpkgs/v/vtable/v0_1_0";
  inputs."vtable-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."vtable-v0_1_1".type = "github";
  inputs."vtable-v0_1_1".owner = "riinr";
  inputs."vtable-v0_1_1".repo = "flake-nimble";
  inputs."vtable-v0_1_1".ref = "flake-pinning";
  inputs."vtable-v0_1_1".dir = "nimpkgs/v/vtable/v0_1_1";
  inputs."vtable-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."vtable-v0_1_2".type = "github";
  inputs."vtable-v0_1_2".owner = "riinr";
  inputs."vtable-v0_1_2".repo = "flake-nimble";
  inputs."vtable-v0_1_2".ref = "flake-pinning";
  inputs."vtable-v0_1_2".dir = "nimpkgs/v/vtable/v0_1_2";
  inputs."vtable-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."vtable-v0_2_0".type = "github";
  inputs."vtable-v0_2_0".owner = "riinr";
  inputs."vtable-v0_2_0".repo = "flake-nimble";
  inputs."vtable-v0_2_0".ref = "flake-pinning";
  inputs."vtable-v0_2_0".dir = "nimpkgs/v/vtable/v0_2_0";
  inputs."vtable-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."vtable-v0_2_1".type = "github";
  inputs."vtable-v0_2_1".owner = "riinr";
  inputs."vtable-v0_2_1".repo = "flake-nimble";
  inputs."vtable-v0_2_1".ref = "flake-pinning";
  inputs."vtable-v0_2_1".dir = "nimpkgs/v/vtable/v0_2_1";
  inputs."vtable-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."vtable-v0_3_0".type = "github";
  inputs."vtable-v0_3_0".owner = "riinr";
  inputs."vtable-v0_3_0".repo = "flake-nimble";
  inputs."vtable-v0_3_0".ref = "flake-pinning";
  inputs."vtable-v0_3_0".dir = "nimpkgs/v/vtable/v0_3_0";
  inputs."vtable-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."vtable-v0_3_1".type = "github";
  inputs."vtable-v0_3_1".owner = "riinr";
  inputs."vtable-v0_3_1".repo = "flake-nimble";
  inputs."vtable-v0_3_1".ref = "flake-pinning";
  inputs."vtable-v0_3_1".dir = "nimpkgs/v/vtable/v0_3_1";
  inputs."vtable-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."vtable-v0_3_2".type = "github";
  inputs."vtable-v0_3_2".owner = "riinr";
  inputs."vtable-v0_3_2".repo = "flake-nimble";
  inputs."vtable-v0_3_2".ref = "flake-pinning";
  inputs."vtable-v0_3_2".dir = "nimpkgs/v/vtable/v0_3_2";
  inputs."vtable-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."vtable-v0_3_3".type = "github";
  inputs."vtable-v0_3_3".owner = "riinr";
  inputs."vtable-v0_3_3".repo = "flake-nimble";
  inputs."vtable-v0_3_3".ref = "flake-pinning";
  inputs."vtable-v0_3_3".dir = "nimpkgs/v/vtable/v0_3_3";
  inputs."vtable-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}