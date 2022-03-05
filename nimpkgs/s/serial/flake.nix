{
  description = ''A library to operate serial ports using pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."serial-master".type = "github";
  inputs."serial-master".owner = "riinr";
  inputs."serial-master".repo = "flake-nimble";
  inputs."serial-master".ref = "flake-pinning";
  inputs."serial-master".dir = "nimpkgs/s/serial/master";
  inputs."serial-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."serial-v0_1_0".type = "github";
  inputs."serial-v0_1_0".owner = "riinr";
  inputs."serial-v0_1_0".repo = "flake-nimble";
  inputs."serial-v0_1_0".ref = "flake-pinning";
  inputs."serial-v0_1_0".dir = "nimpkgs/s/serial/v0_1_0";
  inputs."serial-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."serial-v1_0_0".type = "github";
  inputs."serial-v1_0_0".owner = "riinr";
  inputs."serial-v1_0_0".repo = "flake-nimble";
  inputs."serial-v1_0_0".ref = "flake-pinning";
  inputs."serial-v1_0_0".dir = "nimpkgs/s/serial/v1_0_0";
  inputs."serial-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."serial-v1_1_0".type = "github";
  inputs."serial-v1_1_0".owner = "riinr";
  inputs."serial-v1_1_0".repo = "flake-nimble";
  inputs."serial-v1_1_0".ref = "flake-pinning";
  inputs."serial-v1_1_0".dir = "nimpkgs/s/serial/v1_1_0";
  inputs."serial-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."serial-v1_1_1".type = "github";
  inputs."serial-v1_1_1".owner = "riinr";
  inputs."serial-v1_1_1".repo = "flake-nimble";
  inputs."serial-v1_1_1".ref = "flake-pinning";
  inputs."serial-v1_1_1".dir = "nimpkgs/s/serial/v1_1_1";
  inputs."serial-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."serial-v1_1_2".type = "github";
  inputs."serial-v1_1_2".owner = "riinr";
  inputs."serial-v1_1_2".repo = "flake-nimble";
  inputs."serial-v1_1_2".ref = "flake-pinning";
  inputs."serial-v1_1_2".dir = "nimpkgs/s/serial/v1_1_2";
  inputs."serial-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."serial-v1_1_3".type = "github";
  inputs."serial-v1_1_3".owner = "riinr";
  inputs."serial-v1_1_3".repo = "flake-nimble";
  inputs."serial-v1_1_3".ref = "flake-pinning";
  inputs."serial-v1_1_3".dir = "nimpkgs/s/serial/v1_1_3";
  inputs."serial-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."serial-v1_1_4".type = "github";
  inputs."serial-v1_1_4".owner = "riinr";
  inputs."serial-v1_1_4".repo = "flake-nimble";
  inputs."serial-v1_1_4".ref = "flake-pinning";
  inputs."serial-v1_1_4".dir = "nimpkgs/s/serial/v1_1_4";
  inputs."serial-v1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."serial-v1_1_5".type = "github";
  inputs."serial-v1_1_5".owner = "riinr";
  inputs."serial-v1_1_5".repo = "flake-nimble";
  inputs."serial-v1_1_5".ref = "flake-pinning";
  inputs."serial-v1_1_5".dir = "nimpkgs/s/serial/v1_1_5";
  inputs."serial-v1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}