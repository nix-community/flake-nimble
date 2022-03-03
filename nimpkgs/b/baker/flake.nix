{
  description = ''Static website generation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."baker-master".type = "github";
  inputs."baker-master".owner = "riinr";
  inputs."baker-master".repo = "flake-nimble";
  inputs."baker-master".ref = "flake-pinning";
  inputs."baker-master".dir = "nimpkgs/b/baker/master";
  inputs."baker-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."baker-v1_6".type = "github";
  inputs."baker-v1_6".owner = "riinr";
  inputs."baker-v1_6".repo = "flake-nimble";
  inputs."baker-v1_6".ref = "flake-pinning";
  inputs."baker-v1_6".dir = "nimpkgs/b/baker/v1_6";
  inputs."baker-v1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."baker-v1_8".type = "github";
  inputs."baker-v1_8".owner = "riinr";
  inputs."baker-v1_8".repo = "flake-nimble";
  inputs."baker-v1_8".ref = "flake-pinning";
  inputs."baker-v1_8".dir = "nimpkgs/b/baker/v1_8";
  inputs."baker-v1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."baker-v1_8_2".type = "github";
  inputs."baker-v1_8_2".owner = "riinr";
  inputs."baker-v1_8_2".repo = "flake-nimble";
  inputs."baker-v1_8_2".ref = "flake-pinning";
  inputs."baker-v1_8_2".dir = "nimpkgs/b/baker/v1_8_2";
  inputs."baker-v1_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v1_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."baker-v1_8_3".type = "github";
  inputs."baker-v1_8_3".owner = "riinr";
  inputs."baker-v1_8_3".repo = "flake-nimble";
  inputs."baker-v1_8_3".ref = "flake-pinning";
  inputs."baker-v1_8_3".dir = "nimpkgs/b/baker/v1_8_3";
  inputs."baker-v1_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v1_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."baker-v2_0_0".type = "github";
  inputs."baker-v2_0_0".owner = "riinr";
  inputs."baker-v2_0_0".repo = "flake-nimble";
  inputs."baker-v2_0_0".ref = "flake-pinning";
  inputs."baker-v2_0_0".dir = "nimpkgs/b/baker/v2_0_0";
  inputs."baker-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."baker-v2_0_1".type = "github";
  inputs."baker-v2_0_1".owner = "riinr";
  inputs."baker-v2_0_1".repo = "flake-nimble";
  inputs."baker-v2_0_1".ref = "flake-pinning";
  inputs."baker-v2_0_1".dir = "nimpkgs/b/baker/v2_0_1";
  inputs."baker-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."baker-v2_0_2".type = "github";
  inputs."baker-v2_0_2".owner = "riinr";
  inputs."baker-v2_0_2".repo = "flake-nimble";
  inputs."baker-v2_0_2".ref = "flake-pinning";
  inputs."baker-v2_0_2".dir = "nimpkgs/b/baker/v2_0_2";
  inputs."baker-v2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."baker-v2_0_3".type = "github";
  inputs."baker-v2_0_3".owner = "riinr";
  inputs."baker-v2_0_3".repo = "flake-nimble";
  inputs."baker-v2_0_3".ref = "flake-pinning";
  inputs."baker-v2_0_3".dir = "nimpkgs/b/baker/v2_0_3";
  inputs."baker-v2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."baker-v2_0_4".type = "github";
  inputs."baker-v2_0_4".owner = "riinr";
  inputs."baker-v2_0_4".repo = "flake-nimble";
  inputs."baker-v2_0_4".ref = "flake-pinning";
  inputs."baker-v2_0_4".dir = "nimpkgs/b/baker/v2_0_4";
  inputs."baker-v2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."baker-v2_0_5".type = "github";
  inputs."baker-v2_0_5".owner = "riinr";
  inputs."baker-v2_0_5".repo = "flake-nimble";
  inputs."baker-v2_0_5".ref = "flake-pinning";
  inputs."baker-v2_0_5".dir = "nimpkgs/b/baker/v2_0_5";
  inputs."baker-v2_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."baker-v2_0_7".type = "github";
  inputs."baker-v2_0_7".owner = "riinr";
  inputs."baker-v2_0_7".repo = "flake-nimble";
  inputs."baker-v2_0_7".ref = "flake-pinning";
  inputs."baker-v2_0_7".dir = "nimpkgs/b/baker/v2_0_7";
  inputs."baker-v2_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."baker-v2_0_9".type = "github";
  inputs."baker-v2_0_9".owner = "riinr";
  inputs."baker-v2_0_9".repo = "flake-nimble";
  inputs."baker-v2_0_9".ref = "flake-pinning";
  inputs."baker-v2_0_9".dir = "nimpkgs/b/baker/v2_0_9";
  inputs."baker-v2_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}