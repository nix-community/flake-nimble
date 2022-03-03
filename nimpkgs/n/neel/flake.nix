{
  description = ''A Nim library for making lightweight Electron-like HTML/JS GUI apps, with full access to Nim capabilities.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."neel-master".type = "github";
  inputs."neel-master".owner = "riinr";
  inputs."neel-master".repo = "flake-nimble";
  inputs."neel-master".ref = "flake-pinning";
  inputs."neel-master".dir = "nimpkgs/n/neel/master";
  inputs."neel-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neel-0_2_0".type = "github";
  inputs."neel-0_2_0".owner = "riinr";
  inputs."neel-0_2_0".repo = "flake-nimble";
  inputs."neel-0_2_0".ref = "flake-pinning";
  inputs."neel-0_2_0".dir = "nimpkgs/n/neel/0_2_0";
  inputs."neel-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neel-v0_2_0".type = "github";
  inputs."neel-v0_2_0".owner = "riinr";
  inputs."neel-v0_2_0".repo = "flake-nimble";
  inputs."neel-v0_2_0".ref = "flake-pinning";
  inputs."neel-v0_2_0".dir = "nimpkgs/n/neel/v0_2_0";
  inputs."neel-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neel-v0_2_1".type = "github";
  inputs."neel-v0_2_1".owner = "riinr";
  inputs."neel-v0_2_1".repo = "flake-nimble";
  inputs."neel-v0_2_1".ref = "flake-pinning";
  inputs."neel-v0_2_1".dir = "nimpkgs/n/neel/v0_2_1";
  inputs."neel-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neel-v0_2_2".type = "github";
  inputs."neel-v0_2_2".owner = "riinr";
  inputs."neel-v0_2_2".repo = "flake-nimble";
  inputs."neel-v0_2_2".ref = "flake-pinning";
  inputs."neel-v0_2_2".dir = "nimpkgs/n/neel/v0_2_2";
  inputs."neel-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neel-v0_2_3".type = "github";
  inputs."neel-v0_2_3".owner = "riinr";
  inputs."neel-v0_2_3".repo = "flake-nimble";
  inputs."neel-v0_2_3".ref = "flake-pinning";
  inputs."neel-v0_2_3".dir = "nimpkgs/n/neel/v0_2_3";
  inputs."neel-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neel-v0_2_4".type = "github";
  inputs."neel-v0_2_4".owner = "riinr";
  inputs."neel-v0_2_4".repo = "flake-nimble";
  inputs."neel-v0_2_4".ref = "flake-pinning";
  inputs."neel-v0_2_4".dir = "nimpkgs/n/neel/v0_2_4";
  inputs."neel-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neel-v0_2_5".type = "github";
  inputs."neel-v0_2_5".owner = "riinr";
  inputs."neel-v0_2_5".repo = "flake-nimble";
  inputs."neel-v0_2_5".ref = "flake-pinning";
  inputs."neel-v0_2_5".dir = "nimpkgs/n/neel/v0_2_5";
  inputs."neel-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neel-v0_2_6".type = "github";
  inputs."neel-v0_2_6".owner = "riinr";
  inputs."neel-v0_2_6".repo = "flake-nimble";
  inputs."neel-v0_2_6".ref = "flake-pinning";
  inputs."neel-v0_2_6".dir = "nimpkgs/n/neel/v0_2_6";
  inputs."neel-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neel-v0_2_7".type = "github";
  inputs."neel-v0_2_7".owner = "riinr";
  inputs."neel-v0_2_7".repo = "flake-nimble";
  inputs."neel-v0_2_7".ref = "flake-pinning";
  inputs."neel-v0_2_7".dir = "nimpkgs/n/neel/v0_2_7";
  inputs."neel-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neel-v0_3_0".type = "github";
  inputs."neel-v0_3_0".owner = "riinr";
  inputs."neel-v0_3_0".repo = "flake-nimble";
  inputs."neel-v0_3_0".ref = "flake-pinning";
  inputs."neel-v0_3_0".dir = "nimpkgs/n/neel/v0_3_0";
  inputs."neel-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neel-v0_3_1".type = "github";
  inputs."neel-v0_3_1".owner = "riinr";
  inputs."neel-v0_3_1".repo = "flake-nimble";
  inputs."neel-v0_3_1".ref = "flake-pinning";
  inputs."neel-v0_3_1".dir = "nimpkgs/n/neel/v0_3_1";
  inputs."neel-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neel-v0_3_2".type = "github";
  inputs."neel-v0_3_2".owner = "riinr";
  inputs."neel-v0_3_2".repo = "flake-nimble";
  inputs."neel-v0_3_2".ref = "flake-pinning";
  inputs."neel-v0_3_2".dir = "nimpkgs/n/neel/v0_3_2";
  inputs."neel-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."neel-v0_4_0".type = "github";
  inputs."neel-v0_4_0".owner = "riinr";
  inputs."neel-v0_4_0".repo = "flake-nimble";
  inputs."neel-v0_4_0".ref = "flake-pinning";
  inputs."neel-v0_4_0".dir = "nimpkgs/n/neel/v0_4_0";
  inputs."neel-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}