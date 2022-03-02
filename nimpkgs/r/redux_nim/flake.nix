{
  description = ''Redux Implementation in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."redux_nim-master".type = "github";
  inputs."redux_nim-master".owner = "riinr";
  inputs."redux_nim-master".repo = "flake-nimble";
  inputs."redux_nim-master".ref = "flake-pinning";
  inputs."redux_nim-master".dir = "nimpkgs/r/redux_nim/master";
  inputs."redux_nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."redux_nim-v0_1_0".type = "github";
  inputs."redux_nim-v0_1_0".owner = "riinr";
  inputs."redux_nim-v0_1_0".repo = "flake-nimble";
  inputs."redux_nim-v0_1_0".ref = "flake-pinning";
  inputs."redux_nim-v0_1_0".dir = "nimpkgs/r/redux_nim/v0_1_0";
  inputs."redux_nim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."redux_nim-v0_1_1".type = "github";
  inputs."redux_nim-v0_1_1".owner = "riinr";
  inputs."redux_nim-v0_1_1".repo = "flake-nimble";
  inputs."redux_nim-v0_1_1".ref = "flake-pinning";
  inputs."redux_nim-v0_1_1".dir = "nimpkgs/r/redux_nim/v0_1_1";
  inputs."redux_nim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."redux_nim-v0_2_0".type = "github";
  inputs."redux_nim-v0_2_0".owner = "riinr";
  inputs."redux_nim-v0_2_0".repo = "flake-nimble";
  inputs."redux_nim-v0_2_0".ref = "flake-pinning";
  inputs."redux_nim-v0_2_0".dir = "nimpkgs/r/redux_nim/v0_2_0";
  inputs."redux_nim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."redux_nim-v1_0_0".type = "github";
  inputs."redux_nim-v1_0_0".owner = "riinr";
  inputs."redux_nim-v1_0_0".repo = "flake-nimble";
  inputs."redux_nim-v1_0_0".ref = "flake-pinning";
  inputs."redux_nim-v1_0_0".dir = "nimpkgs/r/redux_nim/v1_0_0";
  inputs."redux_nim-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."redux_nim-v1_0_1".type = "github";
  inputs."redux_nim-v1_0_1".owner = "riinr";
  inputs."redux_nim-v1_0_1".repo = "flake-nimble";
  inputs."redux_nim-v1_0_1".ref = "flake-pinning";
  inputs."redux_nim-v1_0_1".dir = "nimpkgs/r/redux_nim/v1_0_1";
  inputs."redux_nim-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."redux_nim-v1_0_2".type = "github";
  inputs."redux_nim-v1_0_2".owner = "riinr";
  inputs."redux_nim-v1_0_2".repo = "flake-nimble";
  inputs."redux_nim-v1_0_2".ref = "flake-pinning";
  inputs."redux_nim-v1_0_2".dir = "nimpkgs/r/redux_nim/v1_0_2";
  inputs."redux_nim-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."redux_nim-v1_0_3".type = "github";
  inputs."redux_nim-v1_0_3".owner = "riinr";
  inputs."redux_nim-v1_0_3".repo = "flake-nimble";
  inputs."redux_nim-v1_0_3".ref = "flake-pinning";
  inputs."redux_nim-v1_0_3".dir = "nimpkgs/r/redux_nim/v1_0_3";
  inputs."redux_nim-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}