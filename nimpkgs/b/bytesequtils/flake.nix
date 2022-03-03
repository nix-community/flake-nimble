{
  description = ''Nim package to manipulate buffer as either seq[byte] or string'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bytesequtils-main".type = "github";
  inputs."bytesequtils-main".owner = "riinr";
  inputs."bytesequtils-main".repo = "flake-nimble";
  inputs."bytesequtils-main".ref = "flake-pinning";
  inputs."bytesequtils-main".dir = "nimpkgs/b/bytesequtils/main";
  inputs."bytesequtils-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bytesequtils-v1_0_0".type = "github";
  inputs."bytesequtils-v1_0_0".owner = "riinr";
  inputs."bytesequtils-v1_0_0".repo = "flake-nimble";
  inputs."bytesequtils-v1_0_0".ref = "flake-pinning";
  inputs."bytesequtils-v1_0_0".dir = "nimpkgs/b/bytesequtils/v1_0_0";
  inputs."bytesequtils-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bytesequtils-v1_1_0".type = "github";
  inputs."bytesequtils-v1_1_0".owner = "riinr";
  inputs."bytesequtils-v1_1_0".repo = "flake-nimble";
  inputs."bytesequtils-v1_1_0".ref = "flake-pinning";
  inputs."bytesequtils-v1_1_0".dir = "nimpkgs/b/bytesequtils/v1_1_0";
  inputs."bytesequtils-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bytesequtils-v1_1_1".type = "github";
  inputs."bytesequtils-v1_1_1".owner = "riinr";
  inputs."bytesequtils-v1_1_1".repo = "flake-nimble";
  inputs."bytesequtils-v1_1_1".ref = "flake-pinning";
  inputs."bytesequtils-v1_1_1".dir = "nimpkgs/b/bytesequtils/v1_1_1";
  inputs."bytesequtils-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bytesequtils-v1_1_2".type = "github";
  inputs."bytesequtils-v1_1_2".owner = "riinr";
  inputs."bytesequtils-v1_1_2".repo = "flake-nimble";
  inputs."bytesequtils-v1_1_2".ref = "flake-pinning";
  inputs."bytesequtils-v1_1_2".dir = "nimpkgs/b/bytesequtils/v1_1_2";
  inputs."bytesequtils-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bytesequtils-v1_1_3".type = "github";
  inputs."bytesequtils-v1_1_3".owner = "riinr";
  inputs."bytesequtils-v1_1_3".repo = "flake-nimble";
  inputs."bytesequtils-v1_1_3".ref = "flake-pinning";
  inputs."bytesequtils-v1_1_3".dir = "nimpkgs/b/bytesequtils/v1_1_3";
  inputs."bytesequtils-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bytesequtils-v1_2_0".type = "github";
  inputs."bytesequtils-v1_2_0".owner = "riinr";
  inputs."bytesequtils-v1_2_0".repo = "flake-nimble";
  inputs."bytesequtils-v1_2_0".ref = "flake-pinning";
  inputs."bytesequtils-v1_2_0".dir = "nimpkgs/b/bytesequtils/v1_2_0";
  inputs."bytesequtils-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}