{
  description = ''Wrapper of the SDL 2 library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sdl2_nim-master".type = "github";
  inputs."sdl2_nim-master".owner = "riinr";
  inputs."sdl2_nim-master".repo = "flake-nimble";
  inputs."sdl2_nim-master".ref = "flake-pinning";
  inputs."sdl2_nim-master".dir = "nimpkgs/s/sdl2_nim/master";
  inputs."sdl2_nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v0_95".type = "github";
  inputs."sdl2_nim-v0_95".owner = "riinr";
  inputs."sdl2_nim-v0_95".repo = "flake-nimble";
  inputs."sdl2_nim-v0_95".ref = "flake-pinning";
  inputs."sdl2_nim-v0_95".dir = "nimpkgs/s/sdl2_nim/v0_95";
  inputs."sdl2_nim-v0_95".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v0_95".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v0_96".type = "github";
  inputs."sdl2_nim-v0_96".owner = "riinr";
  inputs."sdl2_nim-v0_96".repo = "flake-nimble";
  inputs."sdl2_nim-v0_96".ref = "flake-pinning";
  inputs."sdl2_nim-v0_96".dir = "nimpkgs/s/sdl2_nim/v0_96";
  inputs."sdl2_nim-v0_96".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v0_96".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_10_0".type = "github";
  inputs."sdl2_nim-v2_0_10_0".owner = "riinr";
  inputs."sdl2_nim-v2_0_10_0".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_10_0".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_10_0".dir = "nimpkgs/s/sdl2_nim/v2_0_10_0";
  inputs."sdl2_nim-v2_0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_12_0".type = "github";
  inputs."sdl2_nim-v2_0_12_0".owner = "riinr";
  inputs."sdl2_nim-v2_0_12_0".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_12_0".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_12_0".dir = "nimpkgs/s/sdl2_nim/v2_0_12_0";
  inputs."sdl2_nim-v2_0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_12_1".type = "github";
  inputs."sdl2_nim-v2_0_12_1".owner = "riinr";
  inputs."sdl2_nim-v2_0_12_1".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_12_1".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_12_1".dir = "nimpkgs/s/sdl2_nim/v2_0_12_1";
  inputs."sdl2_nim-v2_0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_14_0".type = "github";
  inputs."sdl2_nim-v2_0_14_0".owner = "riinr";
  inputs."sdl2_nim-v2_0_14_0".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_14_0".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_14_0".dir = "nimpkgs/s/sdl2_nim/v2_0_14_0";
  inputs."sdl2_nim-v2_0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_14_2".type = "github";
  inputs."sdl2_nim-v2_0_14_2".owner = "riinr";
  inputs."sdl2_nim-v2_0_14_2".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_14_2".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_14_2".dir = "nimpkgs/s/sdl2_nim/v2_0_14_2";
  inputs."sdl2_nim-v2_0_14_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_14_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_14_2-legacy".type = "github";
  inputs."sdl2_nim-v2_0_14_2-legacy".owner = "riinr";
  inputs."sdl2_nim-v2_0_14_2-legacy".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_14_2-legacy".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_14_2-legacy".dir = "nimpkgs/s/sdl2_nim/v2_0_14_2-legacy";
  inputs."sdl2_nim-v2_0_14_2-legacy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_14_2-legacy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_14_3".type = "github";
  inputs."sdl2_nim-v2_0_14_3".owner = "riinr";
  inputs."sdl2_nim-v2_0_14_3".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_14_3".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_14_3".dir = "nimpkgs/s/sdl2_nim/v2_0_14_3";
  inputs."sdl2_nim-v2_0_14_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_14_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_14_3-legacy".type = "github";
  inputs."sdl2_nim-v2_0_14_3-legacy".owner = "riinr";
  inputs."sdl2_nim-v2_0_14_3-legacy".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_14_3-legacy".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_14_3-legacy".dir = "nimpkgs/s/sdl2_nim/v2_0_14_3-legacy";
  inputs."sdl2_nim-v2_0_14_3-legacy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_14_3-legacy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_5_0".type = "github";
  inputs."sdl2_nim-v2_0_5_0".owner = "riinr";
  inputs."sdl2_nim-v2_0_5_0".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_5_0".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_5_0".dir = "nimpkgs/s/sdl2_nim/v2_0_5_0";
  inputs."sdl2_nim-v2_0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_6_0".type = "github";
  inputs."sdl2_nim-v2_0_6_0".owner = "riinr";
  inputs."sdl2_nim-v2_0_6_0".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_6_0".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_6_0".dir = "nimpkgs/s/sdl2_nim/v2_0_6_0";
  inputs."sdl2_nim-v2_0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_6_1".type = "github";
  inputs."sdl2_nim-v2_0_6_1".owner = "riinr";
  inputs."sdl2_nim-v2_0_6_1".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_6_1".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_6_1".dir = "nimpkgs/s/sdl2_nim/v2_0_6_1";
  inputs."sdl2_nim-v2_0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_7_0".type = "github";
  inputs."sdl2_nim-v2_0_7_0".owner = "riinr";
  inputs."sdl2_nim-v2_0_7_0".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_7_0".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_7_0".dir = "nimpkgs/s/sdl2_nim/v2_0_7_0";
  inputs."sdl2_nim-v2_0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_7_1".type = "github";
  inputs."sdl2_nim-v2_0_7_1".owner = "riinr";
  inputs."sdl2_nim-v2_0_7_1".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_7_1".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_7_1".dir = "nimpkgs/s/sdl2_nim/v2_0_7_1";
  inputs."sdl2_nim-v2_0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_8_0".type = "github";
  inputs."sdl2_nim-v2_0_8_0".owner = "riinr";
  inputs."sdl2_nim-v2_0_8_0".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_8_0".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_8_0".dir = "nimpkgs/s/sdl2_nim/v2_0_8_0";
  inputs."sdl2_nim-v2_0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_9_0".type = "github";
  inputs."sdl2_nim-v2_0_9_0".owner = "riinr";
  inputs."sdl2_nim-v2_0_9_0".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_9_0".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_9_0".dir = "nimpkgs/s/sdl2_nim/v2_0_9_0";
  inputs."sdl2_nim-v2_0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_9_1".type = "github";
  inputs."sdl2_nim-v2_0_9_1".owner = "riinr";
  inputs."sdl2_nim-v2_0_9_1".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_9_1".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_9_1".dir = "nimpkgs/s/sdl2_nim/v2_0_9_1";
  inputs."sdl2_nim-v2_0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sdl2_nim-v2_0_9_2".type = "github";
  inputs."sdl2_nim-v2_0_9_2".owner = "riinr";
  inputs."sdl2_nim-v2_0_9_2".repo = "flake-nimble";
  inputs."sdl2_nim-v2_0_9_2".ref = "flake-pinning";
  inputs."sdl2_nim-v2_0_9_2".dir = "nimpkgs/s/sdl2_nim/v2_0_9_2";
  inputs."sdl2_nim-v2_0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim-v2_0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}