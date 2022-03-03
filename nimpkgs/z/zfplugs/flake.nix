{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."zfplugs-master".type = "github";
  inputs."zfplugs-master".owner = "riinr";
  inputs."zfplugs-master".repo = "flake-nimble";
  inputs."zfplugs-master".ref = "flake-pinning";
  inputs."zfplugs-master".dir = "nimpkgs/z/zfplugs/master";
  inputs."zfplugs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-0_0_19".type = "github";
  inputs."zfplugs-0_0_19".owner = "riinr";
  inputs."zfplugs-0_0_19".repo = "flake-nimble";
  inputs."zfplugs-0_0_19".ref = "flake-pinning";
  inputs."zfplugs-0_0_19".dir = "nimpkgs/z/zfplugs/0_0_19";
  inputs."zfplugs-0_0_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-0_0_20".type = "github";
  inputs."zfplugs-0_0_20".owner = "riinr";
  inputs."zfplugs-0_0_20".repo = "flake-nimble";
  inputs."zfplugs-0_0_20".ref = "flake-pinning";
  inputs."zfplugs-0_0_20".dir = "nimpkgs/z/zfplugs/0_0_20";
  inputs."zfplugs-0_0_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-0_0_21".type = "github";
  inputs."zfplugs-0_0_21".owner = "riinr";
  inputs."zfplugs-0_0_21".repo = "flake-nimble";
  inputs."zfplugs-0_0_21".ref = "flake-pinning";
  inputs."zfplugs-0_0_21".dir = "nimpkgs/z/zfplugs/0_0_21";
  inputs."zfplugs-0_0_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-0_0_22".type = "github";
  inputs."zfplugs-0_0_22".owner = "riinr";
  inputs."zfplugs-0_0_22".repo = "flake-nimble";
  inputs."zfplugs-0_0_22".ref = "flake-pinning";
  inputs."zfplugs-0_0_22".dir = "nimpkgs/z/zfplugs/0_0_22";
  inputs."zfplugs-0_0_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-0_0_23".type = "github";
  inputs."zfplugs-0_0_23".owner = "riinr";
  inputs."zfplugs-0_0_23".repo = "flake-nimble";
  inputs."zfplugs-0_0_23".ref = "flake-pinning";
  inputs."zfplugs-0_0_23".dir = "nimpkgs/z/zfplugs/0_0_23";
  inputs."zfplugs-0_0_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-0_1_1".type = "github";
  inputs."zfplugs-0_1_1".owner = "riinr";
  inputs."zfplugs-0_1_1".repo = "flake-nimble";
  inputs."zfplugs-0_1_1".ref = "flake-pinning";
  inputs."zfplugs-0_1_1".dir = "nimpkgs/z/zfplugs/0_1_1";
  inputs."zfplugs-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-0_1_2".type = "github";
  inputs."zfplugs-0_1_2".owner = "riinr";
  inputs."zfplugs-0_1_2".repo = "flake-nimble";
  inputs."zfplugs-0_1_2".ref = "flake-pinning";
  inputs."zfplugs-0_1_2".dir = "nimpkgs/z/zfplugs/0_1_2";
  inputs."zfplugs-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-0_1_4".type = "github";
  inputs."zfplugs-0_1_4".owner = "riinr";
  inputs."zfplugs-0_1_4".repo = "flake-nimble";
  inputs."zfplugs-0_1_4".ref = "flake-pinning";
  inputs."zfplugs-0_1_4".dir = "nimpkgs/z/zfplugs/0_1_4";
  inputs."zfplugs-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-v0_0_3".type = "github";
  inputs."zfplugs-v0_0_3".owner = "riinr";
  inputs."zfplugs-v0_0_3".repo = "flake-nimble";
  inputs."zfplugs-v0_0_3".ref = "flake-pinning";
  inputs."zfplugs-v0_0_3".dir = "nimpkgs/z/zfplugs/v0_0_3";
  inputs."zfplugs-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-v0_0_5".type = "github";
  inputs."zfplugs-v0_0_5".owner = "riinr";
  inputs."zfplugs-v0_0_5".repo = "flake-nimble";
  inputs."zfplugs-v0_0_5".ref = "flake-pinning";
  inputs."zfplugs-v0_0_5".dir = "nimpkgs/z/zfplugs/v0_0_5";
  inputs."zfplugs-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-v0_0_6".type = "github";
  inputs."zfplugs-v0_0_6".owner = "riinr";
  inputs."zfplugs-v0_0_6".repo = "flake-nimble";
  inputs."zfplugs-v0_0_6".ref = "flake-pinning";
  inputs."zfplugs-v0_0_6".dir = "nimpkgs/z/zfplugs/v0_0_6";
  inputs."zfplugs-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-v0_0_7".type = "github";
  inputs."zfplugs-v0_0_7".owner = "riinr";
  inputs."zfplugs-v0_0_7".repo = "flake-nimble";
  inputs."zfplugs-v0_0_7".ref = "flake-pinning";
  inputs."zfplugs-v0_0_7".dir = "nimpkgs/z/zfplugs/v0_0_7";
  inputs."zfplugs-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-v0_1_10".type = "github";
  inputs."zfplugs-v0_1_10".owner = "riinr";
  inputs."zfplugs-v0_1_10".repo = "flake-nimble";
  inputs."zfplugs-v0_1_10".ref = "flake-pinning";
  inputs."zfplugs-v0_1_10".dir = "nimpkgs/z/zfplugs/v0_1_10";
  inputs."zfplugs-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-v0_1_11".type = "github";
  inputs."zfplugs-v0_1_11".owner = "riinr";
  inputs."zfplugs-v0_1_11".repo = "flake-nimble";
  inputs."zfplugs-v0_1_11".ref = "flake-pinning";
  inputs."zfplugs-v0_1_11".dir = "nimpkgs/z/zfplugs/v0_1_11";
  inputs."zfplugs-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-v0_1_5".type = "github";
  inputs."zfplugs-v0_1_5".owner = "riinr";
  inputs."zfplugs-v0_1_5".repo = "flake-nimble";
  inputs."zfplugs-v0_1_5".ref = "flake-pinning";
  inputs."zfplugs-v0_1_5".dir = "nimpkgs/z/zfplugs/v0_1_5";
  inputs."zfplugs-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-v0_1_6".type = "github";
  inputs."zfplugs-v0_1_6".owner = "riinr";
  inputs."zfplugs-v0_1_6".repo = "flake-nimble";
  inputs."zfplugs-v0_1_6".ref = "flake-pinning";
  inputs."zfplugs-v0_1_6".dir = "nimpkgs/z/zfplugs/v0_1_6";
  inputs."zfplugs-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-v0_1_7".type = "github";
  inputs."zfplugs-v0_1_7".owner = "riinr";
  inputs."zfplugs-v0_1_7".repo = "flake-nimble";
  inputs."zfplugs-v0_1_7".ref = "flake-pinning";
  inputs."zfplugs-v0_1_7".dir = "nimpkgs/z/zfplugs/v0_1_7";
  inputs."zfplugs-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-v0_1_8".type = "github";
  inputs."zfplugs-v0_1_8".owner = "riinr";
  inputs."zfplugs-v0_1_8".repo = "flake-nimble";
  inputs."zfplugs-v0_1_8".ref = "flake-pinning";
  inputs."zfplugs-v0_1_8".dir = "nimpkgs/z/zfplugs/v0_1_8";
  inputs."zfplugs-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-v0_1_9".type = "github";
  inputs."zfplugs-v0_1_9".owner = "riinr";
  inputs."zfplugs-v0_1_9".repo = "flake-nimble";
  inputs."zfplugs-v0_1_9".ref = "flake-pinning";
  inputs."zfplugs-v0_1_9".dir = "nimpkgs/z/zfplugs/v0_1_9";
  inputs."zfplugs-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zfplugs-v1_1_8".type = "github";
  inputs."zfplugs-v1_1_8".owner = "riinr";
  inputs."zfplugs-v1_1_8".repo = "flake-nimble";
  inputs."zfplugs-v1_1_8".ref = "flake-pinning";
  inputs."zfplugs-v1_1_8".dir = "nimpkgs/z/zfplugs/v1_1_8";
  inputs."zfplugs-v1_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v1_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}