{
  description = ''Binary parser/encoder DSL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."binarylang-main".type = "github";
  inputs."binarylang-main".owner = "riinr";
  inputs."binarylang-main".repo = "flake-nimble";
  inputs."binarylang-main".ref = "flake-pinning";
  inputs."binarylang-main".dir = "nimpkgs/b/binarylang/main";
  inputs."binarylang-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."binarylang-v0_2_0".type = "github";
  inputs."binarylang-v0_2_0".owner = "riinr";
  inputs."binarylang-v0_2_0".repo = "flake-nimble";
  inputs."binarylang-v0_2_0".ref = "flake-pinning";
  inputs."binarylang-v0_2_0".dir = "nimpkgs/b/binarylang/v0_2_0";
  inputs."binarylang-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."binarylang-v0_3_0".type = "github";
  inputs."binarylang-v0_3_0".owner = "riinr";
  inputs."binarylang-v0_3_0".repo = "flake-nimble";
  inputs."binarylang-v0_3_0".ref = "flake-pinning";
  inputs."binarylang-v0_3_0".dir = "nimpkgs/b/binarylang/v0_3_0";
  inputs."binarylang-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."binarylang-v0_3_1".type = "github";
  inputs."binarylang-v0_3_1".owner = "riinr";
  inputs."binarylang-v0_3_1".repo = "flake-nimble";
  inputs."binarylang-v0_3_1".ref = "flake-pinning";
  inputs."binarylang-v0_3_1".dir = "nimpkgs/b/binarylang/v0_3_1";
  inputs."binarylang-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."binarylang-v0_3_2".type = "github";
  inputs."binarylang-v0_3_2".owner = "riinr";
  inputs."binarylang-v0_3_2".repo = "flake-nimble";
  inputs."binarylang-v0_3_2".ref = "flake-pinning";
  inputs."binarylang-v0_3_2".dir = "nimpkgs/b/binarylang/v0_3_2";
  inputs."binarylang-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."binarylang-v0_5_0".type = "github";
  inputs."binarylang-v0_5_0".owner = "riinr";
  inputs."binarylang-v0_5_0".repo = "flake-nimble";
  inputs."binarylang-v0_5_0".ref = "flake-pinning";
  inputs."binarylang-v0_5_0".dir = "nimpkgs/b/binarylang/v0_5_0";
  inputs."binarylang-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."binarylang-v0_5_1".type = "github";
  inputs."binarylang-v0_5_1".owner = "riinr";
  inputs."binarylang-v0_5_1".repo = "flake-nimble";
  inputs."binarylang-v0_5_1".ref = "flake-pinning";
  inputs."binarylang-v0_5_1".dir = "nimpkgs/b/binarylang/v0_5_1";
  inputs."binarylang-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}