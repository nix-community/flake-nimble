{
  description = ''nim package manager'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
    inputs."slim-v0_1_1".type = "github";
  inputs."slim-v0_1_1".owner = "riinr";
  inputs."slim-v0_1_1".repo = "flake-nimble";
  inputs."slim-v0_1_1".ref = "flake-pinning";
  inputs."slim-v0_1_1".dir = "nimpkgs/s/slim/v0_1_1";
  inputs."slim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."slim-v0_1_2".type = "github";
  inputs."slim-v0_1_2".owner = "riinr";
  inputs."slim-v0_1_2".repo = "flake-nimble";
  inputs."slim-v0_1_2".ref = "flake-pinning";
  inputs."slim-v0_1_2".dir = "nimpkgs/s/slim/v0_1_2";
  inputs."slim-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."slim-v0_1_3".type = "github";
  inputs."slim-v0_1_3".owner = "riinr";
  inputs."slim-v0_1_3".repo = "flake-nimble";
  inputs."slim-v0_1_3".ref = "flake-pinning";
  inputs."slim-v0_1_3".dir = "nimpkgs/s/slim/v0_1_3";
  inputs."slim-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."slim-v0_1_5".type = "github";
  inputs."slim-v0_1_5".owner = "riinr";
  inputs."slim-v0_1_5".repo = "flake-nimble";
  inputs."slim-v0_1_5".ref = "flake-pinning";
  inputs."slim-v0_1_5".dir = "nimpkgs/s/slim/v0_1_5";
  inputs."slim-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."slim-v0_1_6".type = "github";
  inputs."slim-v0_1_6".owner = "riinr";
  inputs."slim-v0_1_6".repo = "flake-nimble";
  inputs."slim-v0_1_6".ref = "flake-pinning";
  inputs."slim-v0_1_6".dir = "nimpkgs/s/slim/v0_1_6";
  inputs."slim-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."slim-v0_1_7".type = "github";
  inputs."slim-v0_1_7".owner = "riinr";
  inputs."slim-v0_1_7".repo = "flake-nimble";
  inputs."slim-v0_1_7".ref = "flake-pinning";
  inputs."slim-v0_1_7".dir = "nimpkgs/s/slim/v0_1_7";
  inputs."slim-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."slim-v0_1_8".type = "github";
  inputs."slim-v0_1_8".owner = "riinr";
  inputs."slim-v0_1_8".repo = "flake-nimble";
  inputs."slim-v0_1_8".ref = "flake-pinning";
  inputs."slim-v0_1_8".dir = "nimpkgs/s/slim/v0_1_8";
  inputs."slim-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."slim-v0_2_0".type = "github";
  inputs."slim-v0_2_0".owner = "riinr";
  inputs."slim-v0_2_0".repo = "flake-nimble";
  inputs."slim-v0_2_0".ref = "flake-pinning";
  inputs."slim-v0_2_0".dir = "nimpkgs/s/slim/v0_2_0";
  inputs."slim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}