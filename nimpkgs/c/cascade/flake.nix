{
  description = ''Method & assignment cascades for Nim, inspired by Smalltalk & Dart.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."cascade-master".type = "github";
  inputs."cascade-master".owner = "riinr";
  inputs."cascade-master".repo = "flake-nimble";
  inputs."cascade-master".ref = "flake-pinning";
  inputs."cascade-master".dir = "nimpkgs/c/cascade/master";
  inputs."cascade-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cascade-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cascade-v0_2_0".type = "github";
  inputs."cascade-v0_2_0".owner = "riinr";
  inputs."cascade-v0_2_0".repo = "flake-nimble";
  inputs."cascade-v0_2_0".ref = "flake-pinning";
  inputs."cascade-v0_2_0".dir = "nimpkgs/c/cascade/v0_2_0";
  inputs."cascade-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cascade-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cascade-v1_0_0".type = "github";
  inputs."cascade-v1_0_0".owner = "riinr";
  inputs."cascade-v1_0_0".repo = "flake-nimble";
  inputs."cascade-v1_0_0".ref = "flake-pinning";
  inputs."cascade-v1_0_0".dir = "nimpkgs/c/cascade/v1_0_0";
  inputs."cascade-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cascade-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}