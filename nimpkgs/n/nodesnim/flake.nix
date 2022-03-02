{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nodesnim-master".type = "github";
  inputs."nodesnim-master".owner = "riinr";
  inputs."nodesnim-master".repo = "flake-nimble";
  inputs."nodesnim-master".ref = "flake-pinning";
  inputs."nodesnim-master".dir = "nimpkgs/n/nodesnim/master";
  inputs."nodesnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-01_09_21_1_24_0_0_6".type = "github";
  inputs."nodesnim-01_09_21_1_24_0_0_6".owner = "riinr";
  inputs."nodesnim-01_09_21_1_24_0_0_6".repo = "flake-nimble";
  inputs."nodesnim-01_09_21_1_24_0_0_6".ref = "flake-pinning";
  inputs."nodesnim-01_09_21_1_24_0_0_6".dir = "nimpkgs/n/nodesnim/01_09_21_1_24_0_0_6";
  inputs."nodesnim-01_09_21_1_24_0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-01_09_21_1_24_0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_2_0".type = "github";
  inputs."nodesnim-nightly-0_2_0".owner = "riinr";
  inputs."nodesnim-nightly-0_2_0".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_2_0".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_2_0".dir = "nimpkgs/n/nodesnim/nightly-0_2_0";
  inputs."nodesnim-nightly-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_2_1a".type = "github";
  inputs."nodesnim-nightly-0_2_1a".owner = "riinr";
  inputs."nodesnim-nightly-0_2_1a".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_2_1a".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_2_1a".dir = "nimpkgs/n/nodesnim/nightly-0_2_1a";
  inputs."nodesnim-nightly-0_2_1a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_1a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_2_2a".type = "github";
  inputs."nodesnim-nightly-0_2_2a".owner = "riinr";
  inputs."nodesnim-nightly-0_2_2a".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_2_2a".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_2_2a".dir = "nimpkgs/n/nodesnim/nightly-0_2_2a";
  inputs."nodesnim-nightly-0_2_2a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_2a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_2_4a".type = "github";
  inputs."nodesnim-nightly-0_2_4a".owner = "riinr";
  inputs."nodesnim-nightly-0_2_4a".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_2_4a".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_2_4a".dir = "nimpkgs/n/nodesnim/nightly-0_2_4a";
  inputs."nodesnim-nightly-0_2_4a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_4a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_2_4b".type = "github";
  inputs."nodesnim-nightly-0_2_4b".owner = "riinr";
  inputs."nodesnim-nightly-0_2_4b".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_2_4b".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_2_4b".dir = "nimpkgs/n/nodesnim/nightly-0_2_4b";
  inputs."nodesnim-nightly-0_2_4b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_4b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_2_4c".type = "github";
  inputs."nodesnim-nightly-0_2_4c".owner = "riinr";
  inputs."nodesnim-nightly-0_2_4c".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_2_4c".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_2_4c".dir = "nimpkgs/n/nodesnim/nightly-0_2_4c";
  inputs."nodesnim-nightly-0_2_4c".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_4c".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_3_0a".type = "github";
  inputs."nodesnim-nightly-0_3_0a".owner = "riinr";
  inputs."nodesnim-nightly-0_3_0a".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_3_0a".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_3_0a".dir = "nimpkgs/n/nodesnim/nightly-0_3_0a";
  inputs."nodesnim-nightly-0_3_0a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_0a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_3_0b".type = "github";
  inputs."nodesnim-nightly-0_3_0b".owner = "riinr";
  inputs."nodesnim-nightly-0_3_0b".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_3_0b".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_3_0b".dir = "nimpkgs/n/nodesnim/nightly-0_3_0b";
  inputs."nodesnim-nightly-0_3_0b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_0b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_3_0c".type = "github";
  inputs."nodesnim-nightly-0_3_0c".owner = "riinr";
  inputs."nodesnim-nightly-0_3_0c".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_3_0c".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_3_0c".dir = "nimpkgs/n/nodesnim/nightly-0_3_0c";
  inputs."nodesnim-nightly-0_3_0c".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_0c".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_3_1a".type = "github";
  inputs."nodesnim-nightly-0_3_1a".owner = "riinr";
  inputs."nodesnim-nightly-0_3_1a".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_3_1a".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_3_1a".dir = "nimpkgs/n/nodesnim/nightly-0_3_1a";
  inputs."nodesnim-nightly-0_3_1a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_1a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_3_1b".type = "github";
  inputs."nodesnim-nightly-0_3_1b".owner = "riinr";
  inputs."nodesnim-nightly-0_3_1b".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_3_1b".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_3_1b".dir = "nimpkgs/n/nodesnim/nightly-0_3_1b";
  inputs."nodesnim-nightly-0_3_1b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_1b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_3_2a".type = "github";
  inputs."nodesnim-nightly-0_3_2a".owner = "riinr";
  inputs."nodesnim-nightly-0_3_2a".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_3_2a".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_3_2a".dir = "nimpkgs/n/nodesnim/nightly-0_3_2a";
  inputs."nodesnim-nightly-0_3_2a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_3_2b".type = "github";
  inputs."nodesnim-nightly-0_3_2b".owner = "riinr";
  inputs."nodesnim-nightly-0_3_2b".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_3_2b".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_3_2b".dir = "nimpkgs/n/nodesnim/nightly-0_3_2b";
  inputs."nodesnim-nightly-0_3_2b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_3_2c".type = "github";
  inputs."nodesnim-nightly-0_3_2c".owner = "riinr";
  inputs."nodesnim-nightly-0_3_2c".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_3_2c".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_3_2c".dir = "nimpkgs/n/nodesnim/nightly-0_3_2c";
  inputs."nodesnim-nightly-0_3_2c".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2c".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_3_2d".type = "github";
  inputs."nodesnim-nightly-0_3_2d".owner = "riinr";
  inputs."nodesnim-nightly-0_3_2d".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_3_2d".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_3_2d".dir = "nimpkgs/n/nodesnim/nightly-0_3_2d";
  inputs."nodesnim-nightly-0_3_2d".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2d".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_3_2e".type = "github";
  inputs."nodesnim-nightly-0_3_2e".owner = "riinr";
  inputs."nodesnim-nightly-0_3_2e".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_3_2e".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_3_2e".dir = "nimpkgs/n/nodesnim/nightly-0_3_2e";
  inputs."nodesnim-nightly-0_3_2e".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2e".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_3_2f".type = "github";
  inputs."nodesnim-nightly-0_3_2f".owner = "riinr";
  inputs."nodesnim-nightly-0_3_2f".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_3_2f".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_3_2f".dir = "nimpkgs/n/nodesnim/nightly-0_3_2f";
  inputs."nodesnim-nightly-0_3_2f".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2f".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_3_3a".type = "github";
  inputs."nodesnim-nightly-0_3_3a".owner = "riinr";
  inputs."nodesnim-nightly-0_3_3a".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_3_3a".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_3_3a".dir = "nimpkgs/n/nodesnim/nightly-0_3_3a";
  inputs."nodesnim-nightly-0_3_3a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_3a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_3_3b".type = "github";
  inputs."nodesnim-nightly-0_3_3b".owner = "riinr";
  inputs."nodesnim-nightly-0_3_3b".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_3_3b".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_3_3b".dir = "nimpkgs/n/nodesnim/nightly-0_3_3b";
  inputs."nodesnim-nightly-0_3_3b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_3b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_4_0a".type = "github";
  inputs."nodesnim-nightly-0_4_0a".owner = "riinr";
  inputs."nodesnim-nightly-0_4_0a".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_4_0a".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_4_0a".dir = "nimpkgs/n/nodesnim/nightly-0_4_0a";
  inputs."nodesnim-nightly-0_4_0a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_0a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_4_0b".type = "github";
  inputs."nodesnim-nightly-0_4_0b".owner = "riinr";
  inputs."nodesnim-nightly-0_4_0b".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_4_0b".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_4_0b".dir = "nimpkgs/n/nodesnim/nightly-0_4_0b";
  inputs."nodesnim-nightly-0_4_0b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_0b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_4_0c".type = "github";
  inputs."nodesnim-nightly-0_4_0c".owner = "riinr";
  inputs."nodesnim-nightly-0_4_0c".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_4_0c".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_4_0c".dir = "nimpkgs/n/nodesnim/nightly-0_4_0c";
  inputs."nodesnim-nightly-0_4_0c".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_0c".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_4_1a".type = "github";
  inputs."nodesnim-nightly-0_4_1a".owner = "riinr";
  inputs."nodesnim-nightly-0_4_1a".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_4_1a".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_4_1a".dir = "nimpkgs/n/nodesnim/nightly-0_4_1a";
  inputs."nodesnim-nightly-0_4_1a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_1a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_4_1b".type = "github";
  inputs."nodesnim-nightly-0_4_1b".owner = "riinr";
  inputs."nodesnim-nightly-0_4_1b".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_4_1b".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_4_1b".dir = "nimpkgs/n/nodesnim/nightly-0_4_1b";
  inputs."nodesnim-nightly-0_4_1b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_1b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_4_2a".type = "github";
  inputs."nodesnim-nightly-0_4_2a".owner = "riinr";
  inputs."nodesnim-nightly-0_4_2a".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_4_2a".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_4_2a".dir = "nimpkgs/n/nodesnim/nightly-0_4_2a";
  inputs."nodesnim-nightly-0_4_2a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_2a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly-0_4_2b".type = "github";
  inputs."nodesnim-nightly-0_4_2b".owner = "riinr";
  inputs."nodesnim-nightly-0_4_2b".repo = "flake-nimble";
  inputs."nodesnim-nightly-0_4_2b".ref = "flake-pinning";
  inputs."nodesnim-nightly-0_4_2b".dir = "nimpkgs/n/nodesnim/nightly-0_4_2b";
  inputs."nodesnim-nightly-0_4_2b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_2b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-nightly_0_2_1".type = "github";
  inputs."nodesnim-nightly_0_2_1".owner = "riinr";
  inputs."nodesnim-nightly_0_2_1".repo = "flake-nimble";
  inputs."nodesnim-nightly_0_2_1".ref = "flake-pinning";
  inputs."nodesnim-nightly_0_2_1".dir = "nimpkgs/n/nodesnim/nightly_0_2_1";
  inputs."nodesnim-nightly_0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly_0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-stable".type = "github";
  inputs."nodesnim-stable".owner = "riinr";
  inputs."nodesnim-stable".repo = "flake-nimble";
  inputs."nodesnim-stable".ref = "flake-pinning";
  inputs."nodesnim-stable".dir = "nimpkgs/n/nodesnim/stable";
  inputs."nodesnim-stable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-stable-0_2_1".type = "github";
  inputs."nodesnim-stable-0_2_1".owner = "riinr";
  inputs."nodesnim-stable-0_2_1".repo = "flake-nimble";
  inputs."nodesnim-stable-0_2_1".ref = "flake-pinning";
  inputs."nodesnim-stable-0_2_1".dir = "nimpkgs/n/nodesnim/stable-0_2_1";
  inputs."nodesnim-stable-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-stable-0_2_2".type = "github";
  inputs."nodesnim-stable-0_2_2".owner = "riinr";
  inputs."nodesnim-stable-0_2_2".repo = "flake-nimble";
  inputs."nodesnim-stable-0_2_2".ref = "flake-pinning";
  inputs."nodesnim-stable-0_2_2".dir = "nimpkgs/n/nodesnim/stable-0_2_2";
  inputs."nodesnim-stable-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-stable-0_2_4".type = "github";
  inputs."nodesnim-stable-0_2_4".owner = "riinr";
  inputs."nodesnim-stable-0_2_4".repo = "flake-nimble";
  inputs."nodesnim-stable-0_2_4".ref = "flake-pinning";
  inputs."nodesnim-stable-0_2_4".dir = "nimpkgs/n/nodesnim/stable-0_2_4";
  inputs."nodesnim-stable-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-stable-0_3_0".type = "github";
  inputs."nodesnim-stable-0_3_0".owner = "riinr";
  inputs."nodesnim-stable-0_3_0".repo = "flake-nimble";
  inputs."nodesnim-stable-0_3_0".ref = "flake-pinning";
  inputs."nodesnim-stable-0_3_0".dir = "nimpkgs/n/nodesnim/stable-0_3_0";
  inputs."nodesnim-stable-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-stable-0_3_1".type = "github";
  inputs."nodesnim-stable-0_3_1".owner = "riinr";
  inputs."nodesnim-stable-0_3_1".repo = "flake-nimble";
  inputs."nodesnim-stable-0_3_1".ref = "flake-pinning";
  inputs."nodesnim-stable-0_3_1".dir = "nimpkgs/n/nodesnim/stable-0_3_1";
  inputs."nodesnim-stable-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-stable-0_3_2".type = "github";
  inputs."nodesnim-stable-0_3_2".owner = "riinr";
  inputs."nodesnim-stable-0_3_2".repo = "flake-nimble";
  inputs."nodesnim-stable-0_3_2".ref = "flake-pinning";
  inputs."nodesnim-stable-0_3_2".dir = "nimpkgs/n/nodesnim/stable-0_3_2";
  inputs."nodesnim-stable-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-stable-0_4_0".type = "github";
  inputs."nodesnim-stable-0_4_0".owner = "riinr";
  inputs."nodesnim-stable-0_4_0".repo = "flake-nimble";
  inputs."nodesnim-stable-0_4_0".ref = "flake-pinning";
  inputs."nodesnim-stable-0_4_0".dir = "nimpkgs/n/nodesnim/stable-0_4_0";
  inputs."nodesnim-stable-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-stable-0_4_1".type = "github";
  inputs."nodesnim-stable-0_4_1".owner = "riinr";
  inputs."nodesnim-stable-0_4_1".repo = "flake-nimble";
  inputs."nodesnim-stable-0_4_1".ref = "flake-pinning";
  inputs."nodesnim-stable-0_4_1".dir = "nimpkgs/n/nodesnim/stable-0_4_1";
  inputs."nodesnim-stable-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-stable-0_4_2".type = "github";
  inputs."nodesnim-stable-0_4_2".owner = "riinr";
  inputs."nodesnim-stable-0_4_2".repo = "flake-nimble";
  inputs."nodesnim-stable-0_4_2".ref = "flake-pinning";
  inputs."nodesnim-stable-0_4_2".dir = "nimpkgs/n/nodesnim/stable-0_4_2";
  inputs."nodesnim-stable-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-stable_0_3_2".type = "github";
  inputs."nodesnim-stable_0_3_2".owner = "riinr";
  inputs."nodesnim-stable_0_3_2".repo = "flake-nimble";
  inputs."nodesnim-stable_0_3_2".ref = "flake-pinning";
  inputs."nodesnim-stable_0_3_2".dir = "nimpkgs/n/nodesnim/stable_0_3_2";
  inputs."nodesnim-stable_0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable_0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-v0_0_1".type = "github";
  inputs."nodesnim-v0_0_1".owner = "riinr";
  inputs."nodesnim-v0_0_1".repo = "flake-nimble";
  inputs."nodesnim-v0_0_1".ref = "flake-pinning";
  inputs."nodesnim-v0_0_1".dir = "nimpkgs/n/nodesnim/v0_0_1";
  inputs."nodesnim-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nodesnim-v0_1_1".type = "github";
  inputs."nodesnim-v0_1_1".owner = "riinr";
  inputs."nodesnim-v0_1_1".repo = "flake-nimble";
  inputs."nodesnim-v0_1_1".ref = "flake-pinning";
  inputs."nodesnim-v0_1_1".dir = "nimpkgs/n/nodesnim/v0_1_1";
  inputs."nodesnim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}