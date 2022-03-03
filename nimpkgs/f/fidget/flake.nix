{
  description = ''Figma based UI library for nim, with HTML and OpenGL backends.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fidget-master".type = "github";
  inputs."fidget-master".owner = "riinr";
  inputs."fidget-master".repo = "flake-nimble";
  inputs."fidget-master".ref = "flake-pinning";
  inputs."fidget-master".dir = "nimpkgs/f/fidget/master";
  inputs."fidget-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_2_1".type = "github";
  inputs."fidget-0_2_1".owner = "riinr";
  inputs."fidget-0_2_1".repo = "flake-nimble";
  inputs."fidget-0_2_1".ref = "flake-pinning";
  inputs."fidget-0_2_1".dir = "nimpkgs/f/fidget/0_2_1";
  inputs."fidget-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_3_0".type = "github";
  inputs."fidget-0_3_0".owner = "riinr";
  inputs."fidget-0_3_0".repo = "flake-nimble";
  inputs."fidget-0_3_0".ref = "flake-pinning";
  inputs."fidget-0_3_0".dir = "nimpkgs/f/fidget/0_3_0";
  inputs."fidget-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_3_1".type = "github";
  inputs."fidget-0_3_1".owner = "riinr";
  inputs."fidget-0_3_1".repo = "flake-nimble";
  inputs."fidget-0_3_1".ref = "flake-pinning";
  inputs."fidget-0_3_1".dir = "nimpkgs/f/fidget/0_3_1";
  inputs."fidget-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_3_2".type = "github";
  inputs."fidget-0_3_2".owner = "riinr";
  inputs."fidget-0_3_2".repo = "flake-nimble";
  inputs."fidget-0_3_2".ref = "flake-pinning";
  inputs."fidget-0_3_2".dir = "nimpkgs/f/fidget/0_3_2";
  inputs."fidget-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_4_0".type = "github";
  inputs."fidget-0_4_0".owner = "riinr";
  inputs."fidget-0_4_0".repo = "flake-nimble";
  inputs."fidget-0_4_0".ref = "flake-pinning";
  inputs."fidget-0_4_0".dir = "nimpkgs/f/fidget/0_4_0";
  inputs."fidget-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_4_1".type = "github";
  inputs."fidget-0_4_1".owner = "riinr";
  inputs."fidget-0_4_1".repo = "flake-nimble";
  inputs."fidget-0_4_1".ref = "flake-pinning";
  inputs."fidget-0_4_1".dir = "nimpkgs/f/fidget/0_4_1";
  inputs."fidget-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_4_2".type = "github";
  inputs."fidget-0_4_2".owner = "riinr";
  inputs."fidget-0_4_2".repo = "flake-nimble";
  inputs."fidget-0_4_2".ref = "flake-pinning";
  inputs."fidget-0_4_2".dir = "nimpkgs/f/fidget/0_4_2";
  inputs."fidget-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_4_3".type = "github";
  inputs."fidget-0_4_3".owner = "riinr";
  inputs."fidget-0_4_3".repo = "flake-nimble";
  inputs."fidget-0_4_3".ref = "flake-pinning";
  inputs."fidget-0_4_3".dir = "nimpkgs/f/fidget/0_4_3";
  inputs."fidget-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_5_0".type = "github";
  inputs."fidget-0_5_0".owner = "riinr";
  inputs."fidget-0_5_0".repo = "flake-nimble";
  inputs."fidget-0_5_0".ref = "flake-pinning";
  inputs."fidget-0_5_0".dir = "nimpkgs/f/fidget/0_5_0";
  inputs."fidget-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_6_0".type = "github";
  inputs."fidget-0_6_0".owner = "riinr";
  inputs."fidget-0_6_0".repo = "flake-nimble";
  inputs."fidget-0_6_0".ref = "flake-pinning";
  inputs."fidget-0_6_0".dir = "nimpkgs/f/fidget/0_6_0";
  inputs."fidget-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_6_1".type = "github";
  inputs."fidget-0_6_1".owner = "riinr";
  inputs."fidget-0_6_1".repo = "flake-nimble";
  inputs."fidget-0_6_1".ref = "flake-pinning";
  inputs."fidget-0_6_1".dir = "nimpkgs/f/fidget/0_6_1";
  inputs."fidget-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_6_2".type = "github";
  inputs."fidget-0_6_2".owner = "riinr";
  inputs."fidget-0_6_2".repo = "flake-nimble";
  inputs."fidget-0_6_2".ref = "flake-pinning";
  inputs."fidget-0_6_2".dir = "nimpkgs/f/fidget/0_6_2";
  inputs."fidget-0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_6_3".type = "github";
  inputs."fidget-0_6_3".owner = "riinr";
  inputs."fidget-0_6_3".repo = "flake-nimble";
  inputs."fidget-0_6_3".ref = "flake-pinning";
  inputs."fidget-0_6_3".dir = "nimpkgs/f/fidget/0_6_3";
  inputs."fidget-0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_6_4".type = "github";
  inputs."fidget-0_6_4".owner = "riinr";
  inputs."fidget-0_6_4".repo = "flake-nimble";
  inputs."fidget-0_6_4".ref = "flake-pinning";
  inputs."fidget-0_6_4".dir = "nimpkgs/f/fidget/0_6_4";
  inputs."fidget-0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_7_0".type = "github";
  inputs."fidget-0_7_0".owner = "riinr";
  inputs."fidget-0_7_0".repo = "flake-nimble";
  inputs."fidget-0_7_0".ref = "flake-pinning";
  inputs."fidget-0_7_0".dir = "nimpkgs/f/fidget/0_7_0";
  inputs."fidget-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_7_1".type = "github";
  inputs."fidget-0_7_1".owner = "riinr";
  inputs."fidget-0_7_1".repo = "flake-nimble";
  inputs."fidget-0_7_1".ref = "flake-pinning";
  inputs."fidget-0_7_1".dir = "nimpkgs/f/fidget/0_7_1";
  inputs."fidget-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_7_3".type = "github";
  inputs."fidget-0_7_3".owner = "riinr";
  inputs."fidget-0_7_3".repo = "flake-nimble";
  inputs."fidget-0_7_3".ref = "flake-pinning";
  inputs."fidget-0_7_3".dir = "nimpkgs/f/fidget/0_7_3";
  inputs."fidget-0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_7_4".type = "github";
  inputs."fidget-0_7_4".owner = "riinr";
  inputs."fidget-0_7_4".repo = "flake-nimble";
  inputs."fidget-0_7_4".ref = "flake-pinning";
  inputs."fidget-0_7_4".dir = "nimpkgs/f/fidget/0_7_4";
  inputs."fidget-0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_7_5".type = "github";
  inputs."fidget-0_7_5".owner = "riinr";
  inputs."fidget-0_7_5".repo = "flake-nimble";
  inputs."fidget-0_7_5".ref = "flake-pinning";
  inputs."fidget-0_7_5".dir = "nimpkgs/f/fidget/0_7_5";
  inputs."fidget-0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_7_7".type = "github";
  inputs."fidget-0_7_7".owner = "riinr";
  inputs."fidget-0_7_7".repo = "flake-nimble";
  inputs."fidget-0_7_7".ref = "flake-pinning";
  inputs."fidget-0_7_7".dir = "nimpkgs/f/fidget/0_7_7";
  inputs."fidget-0_7_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_7_8".type = "github";
  inputs."fidget-0_7_8".owner = "riinr";
  inputs."fidget-0_7_8".repo = "flake-nimble";
  inputs."fidget-0_7_8".ref = "flake-pinning";
  inputs."fidget-0_7_8".dir = "nimpkgs/f/fidget/0_7_8";
  inputs."fidget-0_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-0_7_9".type = "github";
  inputs."fidget-0_7_9".owner = "riinr";
  inputs."fidget-0_7_9".repo = "flake-nimble";
  inputs."fidget-0_7_9".ref = "flake-pinning";
  inputs."fidget-0_7_9".dir = "nimpkgs/f/fidget/0_7_9";
  inputs."fidget-0_7_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-v0_2_1".type = "github";
  inputs."fidget-v0_2_1".owner = "riinr";
  inputs."fidget-v0_2_1".repo = "flake-nimble";
  inputs."fidget-v0_2_1".ref = "flake-pinning";
  inputs."fidget-v0_2_1".dir = "nimpkgs/f/fidget/v0_2_1";
  inputs."fidget-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fidget-v0_3_1".type = "github";
  inputs."fidget-v0_3_1".owner = "riinr";
  inputs."fidget-v0_3_1".repo = "flake-nimble";
  inputs."fidget-v0_3_1".ref = "flake-pinning";
  inputs."fidget-v0_3_1".dir = "nimpkgs/f/fidget/v0_3_1";
  inputs."fidget-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}