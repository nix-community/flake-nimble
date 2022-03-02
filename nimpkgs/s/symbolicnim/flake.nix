{
  description = ''A symbolic library written purely in Nim with the ability to compile expressions into efficient functions.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."symbolicnim-master".type = "github";
  inputs."symbolicnim-master".owner = "riinr";
  inputs."symbolicnim-master".repo = "flake-nimble";
  inputs."symbolicnim-master".ref = "flake-pinning";
  inputs."symbolicnim-master".dir = "nimpkgs/s/symbolicnim/master";
  inputs."symbolicnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."symbolicnim-v0_1".type = "github";
  inputs."symbolicnim-v0_1".owner = "riinr";
  inputs."symbolicnim-v0_1".repo = "flake-nimble";
  inputs."symbolicnim-v0_1".ref = "flake-pinning";
  inputs."symbolicnim-v0_1".dir = "nimpkgs/s/symbolicnim/v0_1";
  inputs."symbolicnim-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."symbolicnim-v0_1_1".type = "github";
  inputs."symbolicnim-v0_1_1".owner = "riinr";
  inputs."symbolicnim-v0_1_1".repo = "flake-nimble";
  inputs."symbolicnim-v0_1_1".ref = "flake-pinning";
  inputs."symbolicnim-v0_1_1".dir = "nimpkgs/s/symbolicnim/v0_1_1";
  inputs."symbolicnim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."symbolicnim-v0_2_0".type = "github";
  inputs."symbolicnim-v0_2_0".owner = "riinr";
  inputs."symbolicnim-v0_2_0".repo = "flake-nimble";
  inputs."symbolicnim-v0_2_0".ref = "flake-pinning";
  inputs."symbolicnim-v0_2_0".dir = "nimpkgs/s/symbolicnim/v0_2_0";
  inputs."symbolicnim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."symbolicnim-v0_2_1".type = "github";
  inputs."symbolicnim-v0_2_1".owner = "riinr";
  inputs."symbolicnim-v0_2_1".repo = "flake-nimble";
  inputs."symbolicnim-v0_2_1".ref = "flake-pinning";
  inputs."symbolicnim-v0_2_1".dir = "nimpkgs/s/symbolicnim/v0_2_1";
  inputs."symbolicnim-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."symbolicnim-v0_2_2".type = "github";
  inputs."symbolicnim-v0_2_2".owner = "riinr";
  inputs."symbolicnim-v0_2_2".repo = "flake-nimble";
  inputs."symbolicnim-v0_2_2".ref = "flake-pinning";
  inputs."symbolicnim-v0_2_2".dir = "nimpkgs/s/symbolicnim/v0_2_2";
  inputs."symbolicnim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."symbolicnim-v0_2_3".type = "github";
  inputs."symbolicnim-v0_2_3".owner = "riinr";
  inputs."symbolicnim-v0_2_3".repo = "flake-nimble";
  inputs."symbolicnim-v0_2_3".ref = "flake-pinning";
  inputs."symbolicnim-v0_2_3".dir = "nimpkgs/s/symbolicnim/v0_2_3";
  inputs."symbolicnim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}