{
  description = ''Small wrapper for SystemVerilog DPI-C header svdpi.h'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."svdpi-master".type = "github";
  inputs."svdpi-master".owner = "riinr";
  inputs."svdpi-master".repo = "flake-nimble";
  inputs."svdpi-master".ref = "flake-pinning";
  inputs."svdpi-master".dir = "nimpkgs/s/svdpi/master";
  inputs."svdpi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."svdpi-v0_1_1".type = "github";
  inputs."svdpi-v0_1_1".owner = "riinr";
  inputs."svdpi-v0_1_1".repo = "flake-nimble";
  inputs."svdpi-v0_1_1".ref = "flake-pinning";
  inputs."svdpi-v0_1_1".dir = "nimpkgs/s/svdpi/v0_1_1";
  inputs."svdpi-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."svdpi-v0_2_0".type = "github";
  inputs."svdpi-v0_2_0".owner = "riinr";
  inputs."svdpi-v0_2_0".repo = "flake-nimble";
  inputs."svdpi-v0_2_0".ref = "flake-pinning";
  inputs."svdpi-v0_2_0".dir = "nimpkgs/s/svdpi/v0_2_0";
  inputs."svdpi-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."svdpi-v0_2_1".type = "github";
  inputs."svdpi-v0_2_1".owner = "riinr";
  inputs."svdpi-v0_2_1".repo = "flake-nimble";
  inputs."svdpi-v0_2_1".ref = "flake-pinning";
  inputs."svdpi-v0_2_1".dir = "nimpkgs/s/svdpi/v0_2_1";
  inputs."svdpi-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."svdpi-v0_3_0".type = "github";
  inputs."svdpi-v0_3_0".owner = "riinr";
  inputs."svdpi-v0_3_0".repo = "flake-nimble";
  inputs."svdpi-v0_3_0".ref = "flake-pinning";
  inputs."svdpi-v0_3_0".dir = "nimpkgs/s/svdpi/v0_3_0";
  inputs."svdpi-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."svdpi-v0_4_0".type = "github";
  inputs."svdpi-v0_4_0".owner = "riinr";
  inputs."svdpi-v0_4_0".repo = "flake-nimble";
  inputs."svdpi-v0_4_0".ref = "flake-pinning";
  inputs."svdpi-v0_4_0".dir = "nimpkgs/s/svdpi/v0_4_0";
  inputs."svdpi-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."svdpi-v0_5_0".type = "github";
  inputs."svdpi-v0_5_0".owner = "riinr";
  inputs."svdpi-v0_5_0".repo = "flake-nimble";
  inputs."svdpi-v0_5_0".ref = "flake-pinning";
  inputs."svdpi-v0_5_0".dir = "nimpkgs/s/svdpi/v0_5_0";
  inputs."svdpi-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."svdpi-v0_5_1".type = "github";
  inputs."svdpi-v0_5_1".owner = "riinr";
  inputs."svdpi-v0_5_1".repo = "flake-nimble";
  inputs."svdpi-v0_5_1".ref = "flake-pinning";
  inputs."svdpi-v0_5_1".dir = "nimpkgs/s/svdpi/v0_5_1";
  inputs."svdpi-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."svdpi-v0_5_2".type = "github";
  inputs."svdpi-v0_5_2".owner = "riinr";
  inputs."svdpi-v0_5_2".repo = "flake-nimble";
  inputs."svdpi-v0_5_2".ref = "flake-pinning";
  inputs."svdpi-v0_5_2".dir = "nimpkgs/s/svdpi/v0_5_2";
  inputs."svdpi-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}