{
  description = ''xam'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."xam-main".type = "github";
  inputs."xam-main".owner = "riinr";
  inputs."xam-main".repo = "flake-nimble";
  inputs."xam-main".ref = "flake-pinning";
  inputs."xam-main".dir = "nimpkgs/x/xam/main";
  inputs."xam-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-0_1_0".type = "github";
  inputs."xam-0_1_0".owner = "riinr";
  inputs."xam-0_1_0".repo = "flake-nimble";
  inputs."xam-0_1_0".ref = "flake-pinning";
  inputs."xam-0_1_0".dir = "nimpkgs/x/xam/0_1_0";
  inputs."xam-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-0_2_0".type = "github";
  inputs."xam-0_2_0".owner = "riinr";
  inputs."xam-0_2_0".repo = "flake-nimble";
  inputs."xam-0_2_0".ref = "flake-pinning";
  inputs."xam-0_2_0".dir = "nimpkgs/x/xam/0_2_0";
  inputs."xam-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-0_3_0".type = "github";
  inputs."xam-0_3_0".owner = "riinr";
  inputs."xam-0_3_0".repo = "flake-nimble";
  inputs."xam-0_3_0".ref = "flake-pinning";
  inputs."xam-0_3_0".dir = "nimpkgs/x/xam/0_3_0";
  inputs."xam-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-0_4_0".type = "github";
  inputs."xam-0_4_0".owner = "riinr";
  inputs."xam-0_4_0".repo = "flake-nimble";
  inputs."xam-0_4_0".ref = "flake-pinning";
  inputs."xam-0_4_0".dir = "nimpkgs/x/xam/0_4_0";
  inputs."xam-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-0_5_0".type = "github";
  inputs."xam-0_5_0".owner = "riinr";
  inputs."xam-0_5_0".repo = "flake-nimble";
  inputs."xam-0_5_0".ref = "flake-pinning";
  inputs."xam-0_5_0".dir = "nimpkgs/x/xam/0_5_0";
  inputs."xam-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-0_6_0".type = "github";
  inputs."xam-0_6_0".owner = "riinr";
  inputs."xam-0_6_0".repo = "flake-nimble";
  inputs."xam-0_6_0".ref = "flake-pinning";
  inputs."xam-0_6_0".dir = "nimpkgs/x/xam/0_6_0";
  inputs."xam-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-0_7_0".type = "github";
  inputs."xam-0_7_0".owner = "riinr";
  inputs."xam-0_7_0".repo = "flake-nimble";
  inputs."xam-0_7_0".ref = "flake-pinning";
  inputs."xam-0_7_0".dir = "nimpkgs/x/xam/0_7_0";
  inputs."xam-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-0_8_0".type = "github";
  inputs."xam-0_8_0".owner = "riinr";
  inputs."xam-0_8_0".repo = "flake-nimble";
  inputs."xam-0_8_0".ref = "flake-pinning";
  inputs."xam-0_8_0".dir = "nimpkgs/x/xam/0_8_0";
  inputs."xam-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-0_9_0".type = "github";
  inputs."xam-0_9_0".owner = "riinr";
  inputs."xam-0_9_0".repo = "flake-nimble";
  inputs."xam-0_9_0".ref = "flake-pinning";
  inputs."xam-0_9_0".dir = "nimpkgs/x/xam/0_9_0";
  inputs."xam-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-1_0_0".type = "github";
  inputs."xam-1_0_0".owner = "riinr";
  inputs."xam-1_0_0".repo = "flake-nimble";
  inputs."xam-1_0_0".ref = "flake-pinning";
  inputs."xam-1_0_0".dir = "nimpkgs/x/xam/1_0_0";
  inputs."xam-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-1_1_0".type = "github";
  inputs."xam-1_1_0".owner = "riinr";
  inputs."xam-1_1_0".repo = "flake-nimble";
  inputs."xam-1_1_0".ref = "flake-pinning";
  inputs."xam-1_1_0".dir = "nimpkgs/x/xam/1_1_0";
  inputs."xam-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-1_3_0".type = "github";
  inputs."xam-1_3_0".owner = "riinr";
  inputs."xam-1_3_0".repo = "flake-nimble";
  inputs."xam-1_3_0".ref = "flake-pinning";
  inputs."xam-1_3_0".dir = "nimpkgs/x/xam/1_3_0";
  inputs."xam-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-1_4_0".type = "github";
  inputs."xam-1_4_0".owner = "riinr";
  inputs."xam-1_4_0".repo = "flake-nimble";
  inputs."xam-1_4_0".ref = "flake-pinning";
  inputs."xam-1_4_0".dir = "nimpkgs/x/xam/1_4_0";
  inputs."xam-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-1_5_0".type = "github";
  inputs."xam-1_5_0".owner = "riinr";
  inputs."xam-1_5_0".repo = "flake-nimble";
  inputs."xam-1_5_0".ref = "flake-pinning";
  inputs."xam-1_5_0".dir = "nimpkgs/x/xam/1_5_0";
  inputs."xam-1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-1_6_0".type = "github";
  inputs."xam-1_6_0".owner = "riinr";
  inputs."xam-1_6_0".repo = "flake-nimble";
  inputs."xam-1_6_0".ref = "flake-pinning";
  inputs."xam-1_6_0".dir = "nimpkgs/x/xam/1_6_0";
  inputs."xam-1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xam-1_7_0".type = "github";
  inputs."xam-1_7_0".owner = "riinr";
  inputs."xam-1_7_0".repo = "flake-nimble";
  inputs."xam-1_7_0".ref = "flake-pinning";
  inputs."xam-1_7_0".dir = "nimpkgs/x/xam/1_7_0";
  inputs."xam-1_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}