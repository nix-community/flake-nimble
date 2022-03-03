{
  description = ''Nim Game Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimgl-master".type = "github";
  inputs."nimgl-master".owner = "riinr";
  inputs."nimgl-master".repo = "flake-nimble";
  inputs."nimgl-master".ref = "flake-pinning";
  inputs."nimgl-master".dir = "nimpkgs/n/nimgl/master";
  inputs."nimgl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-0_1_0".type = "github";
  inputs."nimgl-0_1_0".owner = "riinr";
  inputs."nimgl-0_1_0".repo = "flake-nimble";
  inputs."nimgl-0_1_0".ref = "flake-pinning";
  inputs."nimgl-0_1_0".dir = "nimpkgs/n/nimgl/0_1_0";
  inputs."nimgl-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-0_2_0".type = "github";
  inputs."nimgl-0_2_0".owner = "riinr";
  inputs."nimgl-0_2_0".repo = "flake-nimble";
  inputs."nimgl-0_2_0".ref = "flake-pinning";
  inputs."nimgl-0_2_0".dir = "nimpkgs/n/nimgl/0_2_0";
  inputs."nimgl-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-0_2_1".type = "github";
  inputs."nimgl-0_2_1".owner = "riinr";
  inputs."nimgl-0_2_1".repo = "flake-nimble";
  inputs."nimgl-0_2_1".ref = "flake-pinning";
  inputs."nimgl-0_2_1".dir = "nimpkgs/n/nimgl/0_2_1";
  inputs."nimgl-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-0_2_2".type = "github";
  inputs."nimgl-0_2_2".owner = "riinr";
  inputs."nimgl-0_2_2".repo = "flake-nimble";
  inputs."nimgl-0_2_2".ref = "flake-pinning";
  inputs."nimgl-0_2_2".dir = "nimpkgs/n/nimgl/0_2_2";
  inputs."nimgl-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-0_3_0".type = "github";
  inputs."nimgl-0_3_0".owner = "riinr";
  inputs."nimgl-0_3_0".repo = "flake-nimble";
  inputs."nimgl-0_3_0".ref = "flake-pinning";
  inputs."nimgl-0_3_0".dir = "nimpkgs/n/nimgl/0_3_0";
  inputs."nimgl-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-0_3_1".type = "github";
  inputs."nimgl-0_3_1".owner = "riinr";
  inputs."nimgl-0_3_1".repo = "flake-nimble";
  inputs."nimgl-0_3_1".ref = "flake-pinning";
  inputs."nimgl-0_3_1".dir = "nimpkgs/n/nimgl/0_3_1";
  inputs."nimgl-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-0_3_2".type = "github";
  inputs."nimgl-0_3_2".owner = "riinr";
  inputs."nimgl-0_3_2".repo = "flake-nimble";
  inputs."nimgl-0_3_2".ref = "flake-pinning";
  inputs."nimgl-0_3_2".dir = "nimpkgs/n/nimgl/0_3_2";
  inputs."nimgl-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-0_3_3".type = "github";
  inputs."nimgl-0_3_3".owner = "riinr";
  inputs."nimgl-0_3_3".repo = "flake-nimble";
  inputs."nimgl-0_3_3".ref = "flake-pinning";
  inputs."nimgl-0_3_3".dir = "nimpkgs/n/nimgl/0_3_3";
  inputs."nimgl-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-0_3_4".type = "github";
  inputs."nimgl-0_3_4".owner = "riinr";
  inputs."nimgl-0_3_4".repo = "flake-nimble";
  inputs."nimgl-0_3_4".ref = "flake-pinning";
  inputs."nimgl-0_3_4".dir = "nimpkgs/n/nimgl/0_3_4";
  inputs."nimgl-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-0_3_5".type = "github";
  inputs."nimgl-0_3_5".owner = "riinr";
  inputs."nimgl-0_3_5".repo = "flake-nimble";
  inputs."nimgl-0_3_5".ref = "flake-pinning";
  inputs."nimgl-0_3_5".dir = "nimpkgs/n/nimgl/0_3_5";
  inputs."nimgl-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-0_3_6".type = "github";
  inputs."nimgl-0_3_6".owner = "riinr";
  inputs."nimgl-0_3_6".repo = "flake-nimble";
  inputs."nimgl-0_3_6".ref = "flake-pinning";
  inputs."nimgl-0_3_6".dir = "nimpkgs/n/nimgl/0_3_6";
  inputs."nimgl-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-0_3_7".type = "github";
  inputs."nimgl-0_3_7".owner = "riinr";
  inputs."nimgl-0_3_7".repo = "flake-nimble";
  inputs."nimgl-0_3_7".ref = "flake-pinning";
  inputs."nimgl-0_3_7".dir = "nimpkgs/n/nimgl/0_3_7";
  inputs."nimgl-0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_0_0".type = "github";
  inputs."nimgl-1_0_0".owner = "riinr";
  inputs."nimgl-1_0_0".repo = "flake-nimble";
  inputs."nimgl-1_0_0".ref = "flake-pinning";
  inputs."nimgl-1_0_0".dir = "nimpkgs/n/nimgl/1_0_0";
  inputs."nimgl-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_0_1".type = "github";
  inputs."nimgl-1_0_1".owner = "riinr";
  inputs."nimgl-1_0_1".repo = "flake-nimble";
  inputs."nimgl-1_0_1".ref = "flake-pinning";
  inputs."nimgl-1_0_1".dir = "nimpkgs/n/nimgl/1_0_1";
  inputs."nimgl-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_1_0".type = "github";
  inputs."nimgl-1_1_0".owner = "riinr";
  inputs."nimgl-1_1_0".repo = "flake-nimble";
  inputs."nimgl-1_1_0".ref = "flake-pinning";
  inputs."nimgl-1_1_0".dir = "nimpkgs/n/nimgl/1_1_0";
  inputs."nimgl-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_1_1".type = "github";
  inputs."nimgl-1_1_1".owner = "riinr";
  inputs."nimgl-1_1_1".repo = "flake-nimble";
  inputs."nimgl-1_1_1".ref = "flake-pinning";
  inputs."nimgl-1_1_1".dir = "nimpkgs/n/nimgl/1_1_1";
  inputs."nimgl-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_1_10".type = "github";
  inputs."nimgl-1_1_10".owner = "riinr";
  inputs."nimgl-1_1_10".repo = "flake-nimble";
  inputs."nimgl-1_1_10".ref = "flake-pinning";
  inputs."nimgl-1_1_10".dir = "nimpkgs/n/nimgl/1_1_10";
  inputs."nimgl-1_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_1_2".type = "github";
  inputs."nimgl-1_1_2".owner = "riinr";
  inputs."nimgl-1_1_2".repo = "flake-nimble";
  inputs."nimgl-1_1_2".ref = "flake-pinning";
  inputs."nimgl-1_1_2".dir = "nimpkgs/n/nimgl/1_1_2";
  inputs."nimgl-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_1_3".type = "github";
  inputs."nimgl-1_1_3".owner = "riinr";
  inputs."nimgl-1_1_3".repo = "flake-nimble";
  inputs."nimgl-1_1_3".ref = "flake-pinning";
  inputs."nimgl-1_1_3".dir = "nimpkgs/n/nimgl/1_1_3";
  inputs."nimgl-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_1_4".type = "github";
  inputs."nimgl-1_1_4".owner = "riinr";
  inputs."nimgl-1_1_4".repo = "flake-nimble";
  inputs."nimgl-1_1_4".ref = "flake-pinning";
  inputs."nimgl-1_1_4".dir = "nimpkgs/n/nimgl/1_1_4";
  inputs."nimgl-1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_1_5".type = "github";
  inputs."nimgl-1_1_5".owner = "riinr";
  inputs."nimgl-1_1_5".repo = "flake-nimble";
  inputs."nimgl-1_1_5".ref = "flake-pinning";
  inputs."nimgl-1_1_5".dir = "nimpkgs/n/nimgl/1_1_5";
  inputs."nimgl-1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_1_6".type = "github";
  inputs."nimgl-1_1_6".owner = "riinr";
  inputs."nimgl-1_1_6".repo = "flake-nimble";
  inputs."nimgl-1_1_6".ref = "flake-pinning";
  inputs."nimgl-1_1_6".dir = "nimpkgs/n/nimgl/1_1_6";
  inputs."nimgl-1_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_1_7".type = "github";
  inputs."nimgl-1_1_7".owner = "riinr";
  inputs."nimgl-1_1_7".repo = "flake-nimble";
  inputs."nimgl-1_1_7".ref = "flake-pinning";
  inputs."nimgl-1_1_7".dir = "nimpkgs/n/nimgl/1_1_7";
  inputs."nimgl-1_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_1_8".type = "github";
  inputs."nimgl-1_1_8".owner = "riinr";
  inputs."nimgl-1_1_8".repo = "flake-nimble";
  inputs."nimgl-1_1_8".ref = "flake-pinning";
  inputs."nimgl-1_1_8".dir = "nimpkgs/n/nimgl/1_1_8";
  inputs."nimgl-1_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_1_9".type = "github";
  inputs."nimgl-1_1_9".owner = "riinr";
  inputs."nimgl-1_1_9".repo = "flake-nimble";
  inputs."nimgl-1_1_9".ref = "flake-pinning";
  inputs."nimgl-1_1_9".dir = "nimpkgs/n/nimgl/1_1_9";
  inputs."nimgl-1_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_2_0".type = "github";
  inputs."nimgl-1_2_0".owner = "riinr";
  inputs."nimgl-1_2_0".repo = "flake-nimble";
  inputs."nimgl-1_2_0".ref = "flake-pinning";
  inputs."nimgl-1_2_0".dir = "nimpkgs/n/nimgl/1_2_0";
  inputs."nimgl-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_3_0".type = "github";
  inputs."nimgl-1_3_0".owner = "riinr";
  inputs."nimgl-1_3_0".repo = "flake-nimble";
  inputs."nimgl-1_3_0".ref = "flake-pinning";
  inputs."nimgl-1_3_0".dir = "nimpkgs/n/nimgl/1_3_0";
  inputs."nimgl-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_3_1".type = "github";
  inputs."nimgl-1_3_1".owner = "riinr";
  inputs."nimgl-1_3_1".repo = "flake-nimble";
  inputs."nimgl-1_3_1".ref = "flake-pinning";
  inputs."nimgl-1_3_1".dir = "nimpkgs/n/nimgl/1_3_1";
  inputs."nimgl-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgl-1_3_2".type = "github";
  inputs."nimgl-1_3_2".owner = "riinr";
  inputs."nimgl-1_3_2".repo = "flake-nimble";
  inputs."nimgl-1_3_2".ref = "flake-pinning";
  inputs."nimgl-1_3_2".dir = "nimpkgs/n/nimgl/1_3_2";
  inputs."nimgl-1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}