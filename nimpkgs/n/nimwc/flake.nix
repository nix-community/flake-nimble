{
  description = ''A website management tool. Run the file and access your webpage.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimwc-master".type = "github";
  inputs."nimwc-master".owner = "riinr";
  inputs."nimwc-master".repo = "flake-nimble";
  inputs."nimwc-master".ref = "flake-pinning";
  inputs."nimwc-master".dir = "nimpkgs/n/nimwc/master";
  inputs."nimwc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v0_6_5".type = "github";
  inputs."nimwc-v0_6_5".owner = "riinr";
  inputs."nimwc-v0_6_5".repo = "flake-nimble";
  inputs."nimwc-v0_6_5".ref = "flake-pinning";
  inputs."nimwc-v0_6_5".dir = "nimpkgs/n/nimwc/v0_6_5";
  inputs."nimwc-v0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v3_0_0".type = "github";
  inputs."nimwc-v3_0_0".owner = "riinr";
  inputs."nimwc-v3_0_0".repo = "flake-nimble";
  inputs."nimwc-v3_0_0".ref = "flake-pinning";
  inputs."nimwc-v3_0_0".dir = "nimpkgs/n/nimwc/v3_0_0";
  inputs."nimwc-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v3_0_1".type = "github";
  inputs."nimwc-v3_0_1".owner = "riinr";
  inputs."nimwc-v3_0_1".repo = "flake-nimble";
  inputs."nimwc-v3_0_1".ref = "flake-pinning";
  inputs."nimwc-v3_0_1".dir = "nimpkgs/n/nimwc/v3_0_1";
  inputs."nimwc-v3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v3_0_2".type = "github";
  inputs."nimwc-v3_0_2".owner = "riinr";
  inputs."nimwc-v3_0_2".repo = "flake-nimble";
  inputs."nimwc-v3_0_2".ref = "flake-pinning";
  inputs."nimwc-v3_0_2".dir = "nimpkgs/n/nimwc/v3_0_2";
  inputs."nimwc-v3_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v3_0_3".type = "github";
  inputs."nimwc-v3_0_3".owner = "riinr";
  inputs."nimwc-v3_0_3".repo = "flake-nimble";
  inputs."nimwc-v3_0_3".ref = "flake-pinning";
  inputs."nimwc-v3_0_3".dir = "nimpkgs/n/nimwc/v3_0_3";
  inputs."nimwc-v3_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v3_1_0".type = "github";
  inputs."nimwc-v3_1_0".owner = "riinr";
  inputs."nimwc-v3_1_0".repo = "flake-nimble";
  inputs."nimwc-v3_1_0".ref = "flake-pinning";
  inputs."nimwc-v3_1_0".dir = "nimpkgs/n/nimwc/v3_1_0";
  inputs."nimwc-v3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v3_2_0".type = "github";
  inputs."nimwc-v3_2_0".owner = "riinr";
  inputs."nimwc-v3_2_0".repo = "flake-nimble";
  inputs."nimwc-v3_2_0".ref = "flake-pinning";
  inputs."nimwc-v3_2_0".dir = "nimpkgs/n/nimwc/v3_2_0";
  inputs."nimwc-v3_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v3_3_0".type = "github";
  inputs."nimwc-v3_3_0".owner = "riinr";
  inputs."nimwc-v3_3_0".repo = "flake-nimble";
  inputs."nimwc-v3_3_0".ref = "flake-pinning";
  inputs."nimwc-v3_3_0".dir = "nimpkgs/n/nimwc/v3_3_0";
  inputs."nimwc-v3_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v4_0_0".type = "github";
  inputs."nimwc-v4_0_0".owner = "riinr";
  inputs."nimwc-v4_0_0".repo = "flake-nimble";
  inputs."nimwc-v4_0_0".ref = "flake-pinning";
  inputs."nimwc-v4_0_0".dir = "nimpkgs/n/nimwc/v4_0_0";
  inputs."nimwc-v4_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v4_0_1".type = "github";
  inputs."nimwc-v4_0_1".owner = "riinr";
  inputs."nimwc-v4_0_1".repo = "flake-nimble";
  inputs."nimwc-v4_0_1".ref = "flake-pinning";
  inputs."nimwc-v4_0_1".dir = "nimpkgs/n/nimwc/v4_0_1";
  inputs."nimwc-v4_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v4_0_10".type = "github";
  inputs."nimwc-v4_0_10".owner = "riinr";
  inputs."nimwc-v4_0_10".repo = "flake-nimble";
  inputs."nimwc-v4_0_10".ref = "flake-pinning";
  inputs."nimwc-v4_0_10".dir = "nimpkgs/n/nimwc/v4_0_10";
  inputs."nimwc-v4_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v4_0_11".type = "github";
  inputs."nimwc-v4_0_11".owner = "riinr";
  inputs."nimwc-v4_0_11".repo = "flake-nimble";
  inputs."nimwc-v4_0_11".ref = "flake-pinning";
  inputs."nimwc-v4_0_11".dir = "nimpkgs/n/nimwc/v4_0_11";
  inputs."nimwc-v4_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v4_0_3".type = "github";
  inputs."nimwc-v4_0_3".owner = "riinr";
  inputs."nimwc-v4_0_3".repo = "flake-nimble";
  inputs."nimwc-v4_0_3".ref = "flake-pinning";
  inputs."nimwc-v4_0_3".dir = "nimpkgs/n/nimwc/v4_0_3";
  inputs."nimwc-v4_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v4_0_4".type = "github";
  inputs."nimwc-v4_0_4".owner = "riinr";
  inputs."nimwc-v4_0_4".repo = "flake-nimble";
  inputs."nimwc-v4_0_4".ref = "flake-pinning";
  inputs."nimwc-v4_0_4".dir = "nimpkgs/n/nimwc/v4_0_4";
  inputs."nimwc-v4_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v4_0_5".type = "github";
  inputs."nimwc-v4_0_5".owner = "riinr";
  inputs."nimwc-v4_0_5".repo = "flake-nimble";
  inputs."nimwc-v4_0_5".ref = "flake-pinning";
  inputs."nimwc-v4_0_5".dir = "nimpkgs/n/nimwc/v4_0_5";
  inputs."nimwc-v4_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v4_0_6".type = "github";
  inputs."nimwc-v4_0_6".owner = "riinr";
  inputs."nimwc-v4_0_6".repo = "flake-nimble";
  inputs."nimwc-v4_0_6".ref = "flake-pinning";
  inputs."nimwc-v4_0_6".dir = "nimpkgs/n/nimwc/v4_0_6";
  inputs."nimwc-v4_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v4_0_7".type = "github";
  inputs."nimwc-v4_0_7".owner = "riinr";
  inputs."nimwc-v4_0_7".repo = "flake-nimble";
  inputs."nimwc-v4_0_7".ref = "flake-pinning";
  inputs."nimwc-v4_0_7".dir = "nimpkgs/n/nimwc/v4_0_7";
  inputs."nimwc-v4_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v4_0_8".type = "github";
  inputs."nimwc-v4_0_8".owner = "riinr";
  inputs."nimwc-v4_0_8".repo = "flake-nimble";
  inputs."nimwc-v4_0_8".ref = "flake-pinning";
  inputs."nimwc-v4_0_8".dir = "nimpkgs/n/nimwc/v4_0_8";
  inputs."nimwc-v4_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v4_0_9".type = "github";
  inputs."nimwc-v4_0_9".owner = "riinr";
  inputs."nimwc-v4_0_9".repo = "flake-nimble";
  inputs."nimwc-v4_0_9".ref = "flake-pinning";
  inputs."nimwc-v4_0_9".dir = "nimpkgs/n/nimwc/v4_0_9";
  inputs."nimwc-v4_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v5_0_0".type = "github";
  inputs."nimwc-v5_0_0".owner = "riinr";
  inputs."nimwc-v5_0_0".repo = "flake-nimble";
  inputs."nimwc-v5_0_0".ref = "flake-pinning";
  inputs."nimwc-v5_0_0".dir = "nimpkgs/n/nimwc/v5_0_0";
  inputs."nimwc-v5_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v5_1_0".type = "github";
  inputs."nimwc-v5_1_0".owner = "riinr";
  inputs."nimwc-v5_1_0".repo = "flake-nimble";
  inputs."nimwc-v5_1_0".ref = "flake-pinning";
  inputs."nimwc-v5_1_0".dir = "nimpkgs/n/nimwc/v5_1_0";
  inputs."nimwc-v5_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v5_1_1".type = "github";
  inputs."nimwc-v5_1_1".owner = "riinr";
  inputs."nimwc-v5_1_1".repo = "flake-nimble";
  inputs."nimwc-v5_1_1".ref = "flake-pinning";
  inputs."nimwc-v5_1_1".dir = "nimpkgs/n/nimwc/v5_1_1";
  inputs."nimwc-v5_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v5_5_0".type = "github";
  inputs."nimwc-v5_5_0".owner = "riinr";
  inputs."nimwc-v5_5_0".repo = "flake-nimble";
  inputs."nimwc-v5_5_0".ref = "flake-pinning";
  inputs."nimwc-v5_5_0".dir = "nimpkgs/n/nimwc/v5_5_0";
  inputs."nimwc-v5_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v5_5_1".type = "github";
  inputs."nimwc-v5_5_1".owner = "riinr";
  inputs."nimwc-v5_5_1".repo = "flake-nimble";
  inputs."nimwc-v5_5_1".ref = "flake-pinning";
  inputs."nimwc-v5_5_1".dir = "nimpkgs/n/nimwc/v5_5_1";
  inputs."nimwc-v5_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v5_5_2".type = "github";
  inputs."nimwc-v5_5_2".owner = "riinr";
  inputs."nimwc-v5_5_2".repo = "flake-nimble";
  inputs."nimwc-v5_5_2".ref = "flake-pinning";
  inputs."nimwc-v5_5_2".dir = "nimpkgs/n/nimwc/v5_5_2";
  inputs."nimwc-v5_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v6_0_0".type = "github";
  inputs."nimwc-v6_0_0".owner = "riinr";
  inputs."nimwc-v6_0_0".repo = "flake-nimble";
  inputs."nimwc-v6_0_0".ref = "flake-pinning";
  inputs."nimwc-v6_0_0".dir = "nimpkgs/n/nimwc/v6_0_0";
  inputs."nimwc-v6_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v6_0_1".type = "github";
  inputs."nimwc-v6_0_1".owner = "riinr";
  inputs."nimwc-v6_0_1".repo = "flake-nimble";
  inputs."nimwc-v6_0_1".ref = "flake-pinning";
  inputs."nimwc-v6_0_1".dir = "nimpkgs/n/nimwc/v6_0_1";
  inputs."nimwc-v6_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v6_0_2".type = "github";
  inputs."nimwc-v6_0_2".owner = "riinr";
  inputs."nimwc-v6_0_2".repo = "flake-nimble";
  inputs."nimwc-v6_0_2".ref = "flake-pinning";
  inputs."nimwc-v6_0_2".dir = "nimpkgs/n/nimwc/v6_0_2";
  inputs."nimwc-v6_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v6_0_3".type = "github";
  inputs."nimwc-v6_0_3".owner = "riinr";
  inputs."nimwc-v6_0_3".repo = "flake-nimble";
  inputs."nimwc-v6_0_3".ref = "flake-pinning";
  inputs."nimwc-v6_0_3".dir = "nimpkgs/n/nimwc/v6_0_3";
  inputs."nimwc-v6_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v6_0_4".type = "github";
  inputs."nimwc-v6_0_4".owner = "riinr";
  inputs."nimwc-v6_0_4".repo = "flake-nimble";
  inputs."nimwc-v6_0_4".ref = "flake-pinning";
  inputs."nimwc-v6_0_4".dir = "nimpkgs/n/nimwc/v6_0_4";
  inputs."nimwc-v6_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v6_0_6".type = "github";
  inputs."nimwc-v6_0_6".owner = "riinr";
  inputs."nimwc-v6_0_6".repo = "flake-nimble";
  inputs."nimwc-v6_0_6".ref = "flake-pinning";
  inputs."nimwc-v6_0_6".dir = "nimpkgs/n/nimwc/v6_0_6";
  inputs."nimwc-v6_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v6_1_0".type = "github";
  inputs."nimwc-v6_1_0".owner = "riinr";
  inputs."nimwc-v6_1_0".repo = "flake-nimble";
  inputs."nimwc-v6_1_0".ref = "flake-pinning";
  inputs."nimwc-v6_1_0".dir = "nimpkgs/n/nimwc/v6_1_0";
  inputs."nimwc-v6_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v6_1_1".type = "github";
  inputs."nimwc-v6_1_1".owner = "riinr";
  inputs."nimwc-v6_1_1".repo = "flake-nimble";
  inputs."nimwc-v6_1_1".ref = "flake-pinning";
  inputs."nimwc-v6_1_1".dir = "nimpkgs/n/nimwc/v6_1_1";
  inputs."nimwc-v6_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimwc-v6_1_2".type = "github";
  inputs."nimwc-v6_1_2".owner = "riinr";
  inputs."nimwc-v6_1_2".repo = "flake-nimble";
  inputs."nimwc-v6_1_2".ref = "flake-pinning";
  inputs."nimwc-v6_1_2".dir = "nimpkgs/n/nimwc/v6_1_2";
  inputs."nimwc-v6_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}