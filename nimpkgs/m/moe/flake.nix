{
  description = ''A command lined based text editor inspired by vi/vim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."moe-develop".type = "github";
  inputs."moe-develop".owner = "riinr";
  inputs."moe-develop".repo = "flake-nimble";
  inputs."moe-develop".ref = "flake-pinning";
  inputs."moe-develop".dir = "nimpkgs/m/moe/develop";
  inputs."moe-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-master".type = "github";
  inputs."moe-master".owner = "riinr";
  inputs."moe-master".repo = "flake-nimble";
  inputs."moe-master".ref = "flake-pinning";
  inputs."moe-master".dir = "nimpkgs/m/moe/master";
  inputs."moe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_1".type = "github";
  inputs."moe-v0_0_1".owner = "riinr";
  inputs."moe-v0_0_1".repo = "flake-nimble";
  inputs."moe-v0_0_1".ref = "flake-pinning";
  inputs."moe-v0_0_1".dir = "nimpkgs/m/moe/v0_0_1";
  inputs."moe-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_2".type = "github";
  inputs."moe-v0_0_2".owner = "riinr";
  inputs."moe-v0_0_2".repo = "flake-nimble";
  inputs."moe-v0_0_2".ref = "flake-pinning";
  inputs."moe-v0_0_2".dir = "nimpkgs/m/moe/v0_0_2";
  inputs."moe-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_3".type = "github";
  inputs."moe-v0_0_3".owner = "riinr";
  inputs."moe-v0_0_3".repo = "flake-nimble";
  inputs."moe-v0_0_3".ref = "flake-pinning";
  inputs."moe-v0_0_3".dir = "nimpkgs/m/moe/v0_0_3";
  inputs."moe-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_35".type = "github";
  inputs."moe-v0_0_35".owner = "riinr";
  inputs."moe-v0_0_35".repo = "flake-nimble";
  inputs."moe-v0_0_35".ref = "flake-pinning";
  inputs."moe-v0_0_35".dir = "nimpkgs/m/moe/v0_0_35";
  inputs."moe-v0_0_35".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_35".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_40".type = "github";
  inputs."moe-v0_0_40".owner = "riinr";
  inputs."moe-v0_0_40".repo = "flake-nimble";
  inputs."moe-v0_0_40".ref = "flake-pinning";
  inputs."moe-v0_0_40".dir = "nimpkgs/m/moe/v0_0_40";
  inputs."moe-v0_0_40".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_40".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_50".type = "github";
  inputs."moe-v0_0_50".owner = "riinr";
  inputs."moe-v0_0_50".repo = "flake-nimble";
  inputs."moe-v0_0_50".ref = "flake-pinning";
  inputs."moe-v0_0_50".dir = "nimpkgs/m/moe/v0_0_50";
  inputs."moe-v0_0_50".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_50".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_60".type = "github";
  inputs."moe-v0_0_60".owner = "riinr";
  inputs."moe-v0_0_60".repo = "flake-nimble";
  inputs."moe-v0_0_60".ref = "flake-pinning";
  inputs."moe-v0_0_60".dir = "nimpkgs/m/moe/v0_0_60";
  inputs."moe-v0_0_60".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_60".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_61".type = "github";
  inputs."moe-v0_0_61".owner = "riinr";
  inputs."moe-v0_0_61".repo = "flake-nimble";
  inputs."moe-v0_0_61".ref = "flake-pinning";
  inputs."moe-v0_0_61".dir = "nimpkgs/m/moe/v0_0_61";
  inputs."moe-v0_0_61".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_61".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_70".type = "github";
  inputs."moe-v0_0_70".owner = "riinr";
  inputs."moe-v0_0_70".repo = "flake-nimble";
  inputs."moe-v0_0_70".ref = "flake-pinning";
  inputs."moe-v0_0_70".dir = "nimpkgs/m/moe/v0_0_70";
  inputs."moe-v0_0_70".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_70".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_80".type = "github";
  inputs."moe-v0_0_80".owner = "riinr";
  inputs."moe-v0_0_80".repo = "flake-nimble";
  inputs."moe-v0_0_80".ref = "flake-pinning";
  inputs."moe-v0_0_80".dir = "nimpkgs/m/moe/v0_0_80";
  inputs."moe-v0_0_80".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_80".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_81".type = "github";
  inputs."moe-v0_0_81".owner = "riinr";
  inputs."moe-v0_0_81".repo = "flake-nimble";
  inputs."moe-v0_0_81".ref = "flake-pinning";
  inputs."moe-v0_0_81".dir = "nimpkgs/m/moe/v0_0_81";
  inputs."moe-v0_0_81".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_81".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_82".type = "github";
  inputs."moe-v0_0_82".owner = "riinr";
  inputs."moe-v0_0_82".repo = "flake-nimble";
  inputs."moe-v0_0_82".ref = "flake-pinning";
  inputs."moe-v0_0_82".dir = "nimpkgs/m/moe/v0_0_82";
  inputs."moe-v0_0_82".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_82".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_83".type = "github";
  inputs."moe-v0_0_83".owner = "riinr";
  inputs."moe-v0_0_83".repo = "flake-nimble";
  inputs."moe-v0_0_83".ref = "flake-pinning";
  inputs."moe-v0_0_83".dir = "nimpkgs/m/moe/v0_0_83";
  inputs."moe-v0_0_83".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_83".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_84".type = "github";
  inputs."moe-v0_0_84".owner = "riinr";
  inputs."moe-v0_0_84".repo = "flake-nimble";
  inputs."moe-v0_0_84".ref = "flake-pinning";
  inputs."moe-v0_0_84".dir = "nimpkgs/m/moe/v0_0_84";
  inputs."moe-v0_0_84".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_84".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_0_90".type = "github";
  inputs."moe-v0_0_90".owner = "riinr";
  inputs."moe-v0_0_90".repo = "flake-nimble";
  inputs."moe-v0_0_90".ref = "flake-pinning";
  inputs."moe-v0_0_90".dir = "nimpkgs/m/moe/v0_0_90";
  inputs."moe-v0_0_90".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_90".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_1_0".type = "github";
  inputs."moe-v0_1_0".owner = "riinr";
  inputs."moe-v0_1_0".repo = "flake-nimble";
  inputs."moe-v0_1_0".ref = "flake-pinning";
  inputs."moe-v0_1_0".dir = "nimpkgs/m/moe/v0_1_0";
  inputs."moe-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_1_1".type = "github";
  inputs."moe-v0_1_1".owner = "riinr";
  inputs."moe-v0_1_1".repo = "flake-nimble";
  inputs."moe-v0_1_1".ref = "flake-pinning";
  inputs."moe-v0_1_1".dir = "nimpkgs/m/moe/v0_1_1";
  inputs."moe-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_1_2".type = "github";
  inputs."moe-v0_1_2".owner = "riinr";
  inputs."moe-v0_1_2".repo = "flake-nimble";
  inputs."moe-v0_1_2".ref = "flake-pinning";
  inputs."moe-v0_1_2".dir = "nimpkgs/m/moe/v0_1_2";
  inputs."moe-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_1_3".type = "github";
  inputs."moe-v0_1_3".owner = "riinr";
  inputs."moe-v0_1_3".repo = "flake-nimble";
  inputs."moe-v0_1_3".ref = "flake-pinning";
  inputs."moe-v0_1_3".dir = "nimpkgs/m/moe/v0_1_3";
  inputs."moe-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_1_4".type = "github";
  inputs."moe-v0_1_4".owner = "riinr";
  inputs."moe-v0_1_4".repo = "flake-nimble";
  inputs."moe-v0_1_4".ref = "flake-pinning";
  inputs."moe-v0_1_4".dir = "nimpkgs/m/moe/v0_1_4";
  inputs."moe-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_1_5".type = "github";
  inputs."moe-v0_1_5".owner = "riinr";
  inputs."moe-v0_1_5".repo = "flake-nimble";
  inputs."moe-v0_1_5".ref = "flake-pinning";
  inputs."moe-v0_1_5".dir = "nimpkgs/m/moe/v0_1_5";
  inputs."moe-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_1_6".type = "github";
  inputs."moe-v0_1_6".owner = "riinr";
  inputs."moe-v0_1_6".repo = "flake-nimble";
  inputs."moe-v0_1_6".ref = "flake-pinning";
  inputs."moe-v0_1_6".dir = "nimpkgs/m/moe/v0_1_6";
  inputs."moe-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_1_7".type = "github";
  inputs."moe-v0_1_7".owner = "riinr";
  inputs."moe-v0_1_7".repo = "flake-nimble";
  inputs."moe-v0_1_7".ref = "flake-pinning";
  inputs."moe-v0_1_7".dir = "nimpkgs/m/moe/v0_1_7";
  inputs."moe-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_1_8".type = "github";
  inputs."moe-v0_1_8".owner = "riinr";
  inputs."moe-v0_1_8".repo = "flake-nimble";
  inputs."moe-v0_1_8".ref = "flake-pinning";
  inputs."moe-v0_1_8".dir = "nimpkgs/m/moe/v0_1_8";
  inputs."moe-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_1_9".type = "github";
  inputs."moe-v0_1_9".owner = "riinr";
  inputs."moe-v0_1_9".repo = "flake-nimble";
  inputs."moe-v0_1_9".ref = "flake-pinning";
  inputs."moe-v0_1_9".dir = "nimpkgs/m/moe/v0_1_9";
  inputs."moe-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_0".type = "github";
  inputs."moe-v0_2_0".owner = "riinr";
  inputs."moe-v0_2_0".repo = "flake-nimble";
  inputs."moe-v0_2_0".ref = "flake-pinning";
  inputs."moe-v0_2_0".dir = "nimpkgs/m/moe/v0_2_0";
  inputs."moe-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_0_1".type = "github";
  inputs."moe-v0_2_0_1".owner = "riinr";
  inputs."moe-v0_2_0_1".repo = "flake-nimble";
  inputs."moe-v0_2_0_1".ref = "flake-pinning";
  inputs."moe-v0_2_0_1".dir = "nimpkgs/m/moe/v0_2_0_1";
  inputs."moe-v0_2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_0_2".type = "github";
  inputs."moe-v0_2_0_2".owner = "riinr";
  inputs."moe-v0_2_0_2".repo = "flake-nimble";
  inputs."moe-v0_2_0_2".ref = "flake-pinning";
  inputs."moe-v0_2_0_2".dir = "nimpkgs/m/moe/v0_2_0_2";
  inputs."moe-v0_2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_1".type = "github";
  inputs."moe-v0_2_1".owner = "riinr";
  inputs."moe-v0_2_1".repo = "flake-nimble";
  inputs."moe-v0_2_1".ref = "flake-pinning";
  inputs."moe-v0_2_1".dir = "nimpkgs/m/moe/v0_2_1";
  inputs."moe-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_2".type = "github";
  inputs."moe-v0_2_2".owner = "riinr";
  inputs."moe-v0_2_2".repo = "flake-nimble";
  inputs."moe-v0_2_2".ref = "flake-pinning";
  inputs."moe-v0_2_2".dir = "nimpkgs/m/moe/v0_2_2";
  inputs."moe-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_2_1".type = "github";
  inputs."moe-v0_2_2_1".owner = "riinr";
  inputs."moe-v0_2_2_1".repo = "flake-nimble";
  inputs."moe-v0_2_2_1".ref = "flake-pinning";
  inputs."moe-v0_2_2_1".dir = "nimpkgs/m/moe/v0_2_2_1";
  inputs."moe-v0_2_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_3".type = "github";
  inputs."moe-v0_2_3".owner = "riinr";
  inputs."moe-v0_2_3".repo = "flake-nimble";
  inputs."moe-v0_2_3".ref = "flake-pinning";
  inputs."moe-v0_2_3".dir = "nimpkgs/m/moe/v0_2_3";
  inputs."moe-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_3_1".type = "github";
  inputs."moe-v0_2_3_1".owner = "riinr";
  inputs."moe-v0_2_3_1".repo = "flake-nimble";
  inputs."moe-v0_2_3_1".ref = "flake-pinning";
  inputs."moe-v0_2_3_1".dir = "nimpkgs/m/moe/v0_2_3_1";
  inputs."moe-v0_2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_4".type = "github";
  inputs."moe-v0_2_4".owner = "riinr";
  inputs."moe-v0_2_4".repo = "flake-nimble";
  inputs."moe-v0_2_4".ref = "flake-pinning";
  inputs."moe-v0_2_4".dir = "nimpkgs/m/moe/v0_2_4";
  inputs."moe-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_4_1".type = "github";
  inputs."moe-v0_2_4_1".owner = "riinr";
  inputs."moe-v0_2_4_1".repo = "flake-nimble";
  inputs."moe-v0_2_4_1".ref = "flake-pinning";
  inputs."moe-v0_2_4_1".dir = "nimpkgs/m/moe/v0_2_4_1";
  inputs."moe-v0_2_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_5_0".type = "github";
  inputs."moe-v0_2_5_0".owner = "riinr";
  inputs."moe-v0_2_5_0".repo = "flake-nimble";
  inputs."moe-v0_2_5_0".ref = "flake-pinning";
  inputs."moe-v0_2_5_0".dir = "nimpkgs/m/moe/v0_2_5_0";
  inputs."moe-v0_2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_5_1".type = "github";
  inputs."moe-v0_2_5_1".owner = "riinr";
  inputs."moe-v0_2_5_1".repo = "flake-nimble";
  inputs."moe-v0_2_5_1".ref = "flake-pinning";
  inputs."moe-v0_2_5_1".dir = "nimpkgs/m/moe/v0_2_5_1";
  inputs."moe-v0_2_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_6_0".type = "github";
  inputs."moe-v0_2_6_0".owner = "riinr";
  inputs."moe-v0_2_6_0".repo = "flake-nimble";
  inputs."moe-v0_2_6_0".ref = "flake-pinning";
  inputs."moe-v0_2_6_0".dir = "nimpkgs/m/moe/v0_2_6_0";
  inputs."moe-v0_2_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_6_1".type = "github";
  inputs."moe-v0_2_6_1".owner = "riinr";
  inputs."moe-v0_2_6_1".repo = "flake-nimble";
  inputs."moe-v0_2_6_1".ref = "flake-pinning";
  inputs."moe-v0_2_6_1".dir = "nimpkgs/m/moe/v0_2_6_1";
  inputs."moe-v0_2_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_7_0".type = "github";
  inputs."moe-v0_2_7_0".owner = "riinr";
  inputs."moe-v0_2_7_0".repo = "flake-nimble";
  inputs."moe-v0_2_7_0".ref = "flake-pinning";
  inputs."moe-v0_2_7_0".dir = "nimpkgs/m/moe/v0_2_7_0";
  inputs."moe-v0_2_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_2_8_0".type = "github";
  inputs."moe-v0_2_8_0".owner = "riinr";
  inputs."moe-v0_2_8_0".repo = "flake-nimble";
  inputs."moe-v0_2_8_0".ref = "flake-pinning";
  inputs."moe-v0_2_8_0".dir = "nimpkgs/m/moe/v0_2_8_0";
  inputs."moe-v0_2_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."moe-v0_3_0".type = "github";
  inputs."moe-v0_3_0".owner = "riinr";
  inputs."moe-v0_3_0".repo = "flake-nimble";
  inputs."moe-v0_3_0".ref = "flake-pinning";
  inputs."moe-v0_3_0".dir = "nimpkgs/m/moe/v0_3_0";
  inputs."moe-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}