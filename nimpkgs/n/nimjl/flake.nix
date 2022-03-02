{
  description = ''Nim Julia bridge'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimjl-master".type = "github";
  inputs."nimjl-master".owner = "riinr";
  inputs."nimjl-master".repo = "flake-nimble";
  inputs."nimjl-master".ref = "flake-pinning";
  inputs."nimjl-master".dir = "nimpkgs/n/nimjl/master";
  inputs."nimjl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_3_0".type = "github";
  inputs."nimjl-v0_3_0".owner = "riinr";
  inputs."nimjl-v0_3_0".repo = "flake-nimble";
  inputs."nimjl-v0_3_0".ref = "flake-pinning";
  inputs."nimjl-v0_3_0".dir = "nimpkgs/n/nimjl/v0_3_0";
  inputs."nimjl-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_4_0".type = "github";
  inputs."nimjl-v0_4_0".owner = "riinr";
  inputs."nimjl-v0_4_0".repo = "flake-nimble";
  inputs."nimjl-v0_4_0".ref = "flake-pinning";
  inputs."nimjl-v0_4_0".dir = "nimpkgs/n/nimjl/v0_4_0";
  inputs."nimjl-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_4_1".type = "github";
  inputs."nimjl-v0_4_1".owner = "riinr";
  inputs."nimjl-v0_4_1".repo = "flake-nimble";
  inputs."nimjl-v0_4_1".ref = "flake-pinning";
  inputs."nimjl-v0_4_1".dir = "nimpkgs/n/nimjl/v0_4_1";
  inputs."nimjl-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_4_2".type = "github";
  inputs."nimjl-v0_4_2".owner = "riinr";
  inputs."nimjl-v0_4_2".repo = "flake-nimble";
  inputs."nimjl-v0_4_2".ref = "flake-pinning";
  inputs."nimjl-v0_4_2".dir = "nimpkgs/n/nimjl/v0_4_2";
  inputs."nimjl-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_4_3".type = "github";
  inputs."nimjl-v0_4_3".owner = "riinr";
  inputs."nimjl-v0_4_3".repo = "flake-nimble";
  inputs."nimjl-v0_4_3".ref = "flake-pinning";
  inputs."nimjl-v0_4_3".dir = "nimpkgs/n/nimjl/v0_4_3";
  inputs."nimjl-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_4_4".type = "github";
  inputs."nimjl-v0_4_4".owner = "riinr";
  inputs."nimjl-v0_4_4".repo = "flake-nimble";
  inputs."nimjl-v0_4_4".ref = "flake-pinning";
  inputs."nimjl-v0_4_4".dir = "nimpkgs/n/nimjl/v0_4_4";
  inputs."nimjl-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_4_5".type = "github";
  inputs."nimjl-v0_4_5".owner = "riinr";
  inputs."nimjl-v0_4_5".repo = "flake-nimble";
  inputs."nimjl-v0_4_5".ref = "flake-pinning";
  inputs."nimjl-v0_4_5".dir = "nimpkgs/n/nimjl/v0_4_5";
  inputs."nimjl-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_5_0".type = "github";
  inputs."nimjl-v0_5_0".owner = "riinr";
  inputs."nimjl-v0_5_0".repo = "flake-nimble";
  inputs."nimjl-v0_5_0".ref = "flake-pinning";
  inputs."nimjl-v0_5_0".dir = "nimpkgs/n/nimjl/v0_5_0";
  inputs."nimjl-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_5_1".type = "github";
  inputs."nimjl-v0_5_1".owner = "riinr";
  inputs."nimjl-v0_5_1".repo = "flake-nimble";
  inputs."nimjl-v0_5_1".ref = "flake-pinning";
  inputs."nimjl-v0_5_1".dir = "nimpkgs/n/nimjl/v0_5_1";
  inputs."nimjl-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_5_2".type = "github";
  inputs."nimjl-v0_5_2".owner = "riinr";
  inputs."nimjl-v0_5_2".repo = "flake-nimble";
  inputs."nimjl-v0_5_2".ref = "flake-pinning";
  inputs."nimjl-v0_5_2".dir = "nimpkgs/n/nimjl/v0_5_2";
  inputs."nimjl-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_5_3".type = "github";
  inputs."nimjl-v0_5_3".owner = "riinr";
  inputs."nimjl-v0_5_3".repo = "flake-nimble";
  inputs."nimjl-v0_5_3".ref = "flake-pinning";
  inputs."nimjl-v0_5_3".dir = "nimpkgs/n/nimjl/v0_5_3";
  inputs."nimjl-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_5_4".type = "github";
  inputs."nimjl-v0_5_4".owner = "riinr";
  inputs."nimjl-v0_5_4".repo = "flake-nimble";
  inputs."nimjl-v0_5_4".ref = "flake-pinning";
  inputs."nimjl-v0_5_4".dir = "nimpkgs/n/nimjl/v0_5_4";
  inputs."nimjl-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_5_5".type = "github";
  inputs."nimjl-v0_5_5".owner = "riinr";
  inputs."nimjl-v0_5_5".repo = "flake-nimble";
  inputs."nimjl-v0_5_5".ref = "flake-pinning";
  inputs."nimjl-v0_5_5".dir = "nimpkgs/n/nimjl/v0_5_5";
  inputs."nimjl-v0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_5_6".type = "github";
  inputs."nimjl-v0_5_6".owner = "riinr";
  inputs."nimjl-v0_5_6".repo = "flake-nimble";
  inputs."nimjl-v0_5_6".ref = "flake-pinning";
  inputs."nimjl-v0_5_6".dir = "nimpkgs/n/nimjl/v0_5_6";
  inputs."nimjl-v0_5_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_5_7".type = "github";
  inputs."nimjl-v0_5_7".owner = "riinr";
  inputs."nimjl-v0_5_7".repo = "flake-nimble";
  inputs."nimjl-v0_5_7".ref = "flake-pinning";
  inputs."nimjl-v0_5_7".dir = "nimpkgs/n/nimjl/v0_5_7";
  inputs."nimjl-v0_5_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_5_8".type = "github";
  inputs."nimjl-v0_5_8".owner = "riinr";
  inputs."nimjl-v0_5_8".repo = "flake-nimble";
  inputs."nimjl-v0_5_8".ref = "flake-pinning";
  inputs."nimjl-v0_5_8".dir = "nimpkgs/n/nimjl/v0_5_8";
  inputs."nimjl-v0_5_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_5_9".type = "github";
  inputs."nimjl-v0_5_9".owner = "riinr";
  inputs."nimjl-v0_5_9".repo = "flake-nimble";
  inputs."nimjl-v0_5_9".ref = "flake-pinning";
  inputs."nimjl-v0_5_9".dir = "nimpkgs/n/nimjl/v0_5_9";
  inputs."nimjl-v0_5_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_6_0".type = "github";
  inputs."nimjl-v0_6_0".owner = "riinr";
  inputs."nimjl-v0_6_0".repo = "flake-nimble";
  inputs."nimjl-v0_6_0".ref = "flake-pinning";
  inputs."nimjl-v0_6_0".dir = "nimpkgs/n/nimjl/v0_6_0";
  inputs."nimjl-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_6_1".type = "github";
  inputs."nimjl-v0_6_1".owner = "riinr";
  inputs."nimjl-v0_6_1".repo = "flake-nimble";
  inputs."nimjl-v0_6_1".ref = "flake-pinning";
  inputs."nimjl-v0_6_1".dir = "nimpkgs/n/nimjl/v0_6_1";
  inputs."nimjl-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_6_2".type = "github";
  inputs."nimjl-v0_6_2".owner = "riinr";
  inputs."nimjl-v0_6_2".repo = "flake-nimble";
  inputs."nimjl-v0_6_2".ref = "flake-pinning";
  inputs."nimjl-v0_6_2".dir = "nimpkgs/n/nimjl/v0_6_2";
  inputs."nimjl-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_6_3".type = "github";
  inputs."nimjl-v0_6_3".owner = "riinr";
  inputs."nimjl-v0_6_3".repo = "flake-nimble";
  inputs."nimjl-v0_6_3".ref = "flake-pinning";
  inputs."nimjl-v0_6_3".dir = "nimpkgs/n/nimjl/v0_6_3";
  inputs."nimjl-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjl-v0_7_0".type = "github";
  inputs."nimjl-v0_7_0".owner = "riinr";
  inputs."nimjl-v0_7_0".repo = "flake-nimble";
  inputs."nimjl-v0_7_0".ref = "flake-pinning";
  inputs."nimjl-v0_7_0".dir = "nimpkgs/n/nimjl/v0_7_0";
  inputs."nimjl-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}