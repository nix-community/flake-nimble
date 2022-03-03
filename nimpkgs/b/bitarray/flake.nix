{
  description = ''mmap-backed bitarray implementation in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bitarray-master".type = "github";
  inputs."bitarray-master".owner = "riinr";
  inputs."bitarray-master".repo = "flake-nimble";
  inputs."bitarray-master".ref = "flake-pinning";
  inputs."bitarray-master".dir = "nimpkgs/b/bitarray/master";
  inputs."bitarray-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_1_1".type = "github";
  inputs."bitarray-v0_1_1".owner = "riinr";
  inputs."bitarray-v0_1_1".repo = "flake-nimble";
  inputs."bitarray-v0_1_1".ref = "flake-pinning";
  inputs."bitarray-v0_1_1".dir = "nimpkgs/b/bitarray/v0_1_1";
  inputs."bitarray-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_1_2".type = "github";
  inputs."bitarray-v0_1_2".owner = "riinr";
  inputs."bitarray-v0_1_2".repo = "flake-nimble";
  inputs."bitarray-v0_1_2".ref = "flake-pinning";
  inputs."bitarray-v0_1_2".dir = "nimpkgs/b/bitarray/v0_1_2";
  inputs."bitarray-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_1_3".type = "github";
  inputs."bitarray-v0_1_3".owner = "riinr";
  inputs."bitarray-v0_1_3".repo = "flake-nimble";
  inputs."bitarray-v0_1_3".ref = "flake-pinning";
  inputs."bitarray-v0_1_3".dir = "nimpkgs/b/bitarray/v0_1_3";
  inputs."bitarray-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_1_4".type = "github";
  inputs."bitarray-v0_1_4".owner = "riinr";
  inputs."bitarray-v0_1_4".repo = "flake-nimble";
  inputs."bitarray-v0_1_4".ref = "flake-pinning";
  inputs."bitarray-v0_1_4".dir = "nimpkgs/b/bitarray/v0_1_4";
  inputs."bitarray-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_2_0".type = "github";
  inputs."bitarray-v0_2_0".owner = "riinr";
  inputs."bitarray-v0_2_0".repo = "flake-nimble";
  inputs."bitarray-v0_2_0".ref = "flake-pinning";
  inputs."bitarray-v0_2_0".dir = "nimpkgs/b/bitarray/v0_2_0";
  inputs."bitarray-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_2_1".type = "github";
  inputs."bitarray-v0_2_1".owner = "riinr";
  inputs."bitarray-v0_2_1".repo = "flake-nimble";
  inputs."bitarray-v0_2_1".ref = "flake-pinning";
  inputs."bitarray-v0_2_1".dir = "nimpkgs/b/bitarray/v0_2_1";
  inputs."bitarray-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_2_2".type = "github";
  inputs."bitarray-v0_2_2".owner = "riinr";
  inputs."bitarray-v0_2_2".repo = "flake-nimble";
  inputs."bitarray-v0_2_2".ref = "flake-pinning";
  inputs."bitarray-v0_2_2".dir = "nimpkgs/b/bitarray/v0_2_2";
  inputs."bitarray-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_2_3".type = "github";
  inputs."bitarray-v0_2_3".owner = "riinr";
  inputs."bitarray-v0_2_3".repo = "flake-nimble";
  inputs."bitarray-v0_2_3".ref = "flake-pinning";
  inputs."bitarray-v0_2_3".dir = "nimpkgs/b/bitarray/v0_2_3";
  inputs."bitarray-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_2_4".type = "github";
  inputs."bitarray-v0_2_4".owner = "riinr";
  inputs."bitarray-v0_2_4".repo = "flake-nimble";
  inputs."bitarray-v0_2_4".ref = "flake-pinning";
  inputs."bitarray-v0_2_4".dir = "nimpkgs/b/bitarray/v0_2_4";
  inputs."bitarray-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_2_5".type = "github";
  inputs."bitarray-v0_2_5".owner = "riinr";
  inputs."bitarray-v0_2_5".repo = "flake-nimble";
  inputs."bitarray-v0_2_5".ref = "flake-pinning";
  inputs."bitarray-v0_2_5".dir = "nimpkgs/b/bitarray/v0_2_5";
  inputs."bitarray-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_2_6".type = "github";
  inputs."bitarray-v0_2_6".owner = "riinr";
  inputs."bitarray-v0_2_6".repo = "flake-nimble";
  inputs."bitarray-v0_2_6".ref = "flake-pinning";
  inputs."bitarray-v0_2_6".dir = "nimpkgs/b/bitarray/v0_2_6";
  inputs."bitarray-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_3_0".type = "github";
  inputs."bitarray-v0_3_0".owner = "riinr";
  inputs."bitarray-v0_3_0".repo = "flake-nimble";
  inputs."bitarray-v0_3_0".ref = "flake-pinning";
  inputs."bitarray-v0_3_0".dir = "nimpkgs/b/bitarray/v0_3_0";
  inputs."bitarray-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_4_0".type = "github";
  inputs."bitarray-v0_4_0".owner = "riinr";
  inputs."bitarray-v0_4_0".repo = "flake-nimble";
  inputs."bitarray-v0_4_0".ref = "flake-pinning";
  inputs."bitarray-v0_4_0".dir = "nimpkgs/b/bitarray/v0_4_0";
  inputs."bitarray-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_5_0".type = "github";
  inputs."bitarray-v0_5_0".owner = "riinr";
  inputs."bitarray-v0_5_0".repo = "flake-nimble";
  inputs."bitarray-v0_5_0".ref = "flake-pinning";
  inputs."bitarray-v0_5_0".dir = "nimpkgs/b/bitarray/v0_5_0";
  inputs."bitarray-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitarray-v0_6_0".type = "github";
  inputs."bitarray-v0_6_0".owner = "riinr";
  inputs."bitarray-v0_6_0".repo = "flake-nimble";
  inputs."bitarray-v0_6_0".ref = "flake-pinning";
  inputs."bitarray-v0_6_0".dir = "nimpkgs/b/bitarray/v0_6_0";
  inputs."bitarray-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}