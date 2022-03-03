{
  description = ''Get information about colors and convert them in the command line'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."clr-master".type = "github";
  inputs."clr-master".owner = "riinr";
  inputs."clr-master".repo = "flake-nimble";
  inputs."clr-master".ref = "flake-pinning";
  inputs."clr-master".dir = "nimpkgs/c/clr/master";
  inputs."clr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."clr-v0_1_0".type = "github";
  inputs."clr-v0_1_0".owner = "riinr";
  inputs."clr-v0_1_0".repo = "flake-nimble";
  inputs."clr-v0_1_0".ref = "flake-pinning";
  inputs."clr-v0_1_0".dir = "nimpkgs/c/clr/v0_1_0";
  inputs."clr-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."clr-v0_1_1".type = "github";
  inputs."clr-v0_1_1".owner = "riinr";
  inputs."clr-v0_1_1".repo = "flake-nimble";
  inputs."clr-v0_1_1".ref = "flake-pinning";
  inputs."clr-v0_1_1".dir = "nimpkgs/c/clr/v0_1_1";
  inputs."clr-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."clr-v0_1_2".type = "github";
  inputs."clr-v0_1_2".owner = "riinr";
  inputs."clr-v0_1_2".repo = "flake-nimble";
  inputs."clr-v0_1_2".ref = "flake-pinning";
  inputs."clr-v0_1_2".dir = "nimpkgs/c/clr/v0_1_2";
  inputs."clr-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."clr-v0_1_3".type = "github";
  inputs."clr-v0_1_3".owner = "riinr";
  inputs."clr-v0_1_3".repo = "flake-nimble";
  inputs."clr-v0_1_3".ref = "flake-pinning";
  inputs."clr-v0_1_3".dir = "nimpkgs/c/clr/v0_1_3";
  inputs."clr-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."clr-v1_0_0".type = "github";
  inputs."clr-v1_0_0".owner = "riinr";
  inputs."clr-v1_0_0".repo = "flake-nimble";
  inputs."clr-v1_0_0".ref = "flake-pinning";
  inputs."clr-v1_0_0".dir = "nimpkgs/c/clr/v1_0_0";
  inputs."clr-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}