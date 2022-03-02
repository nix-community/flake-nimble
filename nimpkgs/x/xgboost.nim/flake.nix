{
  description = ''Nim wrapper of libxgboost'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."xgboost.nim-master".type = "github";
  inputs."xgboost.nim-master".owner = "riinr";
  inputs."xgboost.nim-master".repo = "flake-nimble";
  inputs."xgboost.nim-master".ref = "flake-pinning";
  inputs."xgboost.nim-master".dir = "nimpkgs/x/xgboost.nim/master";
  inputs."xgboost.nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xgboost.nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xgboost.nim-0_1_0".type = "github";
  inputs."xgboost.nim-0_1_0".owner = "riinr";
  inputs."xgboost.nim-0_1_0".repo = "flake-nimble";
  inputs."xgboost.nim-0_1_0".ref = "flake-pinning";
  inputs."xgboost.nim-0_1_0".dir = "nimpkgs/x/xgboost.nim/0_1_0";
  inputs."xgboost.nim-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xgboost.nim-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xgboost.nim-0_1_1".type = "github";
  inputs."xgboost.nim-0_1_1".owner = "riinr";
  inputs."xgboost.nim-0_1_1".repo = "flake-nimble";
  inputs."xgboost.nim-0_1_1".ref = "flake-pinning";
  inputs."xgboost.nim-0_1_1".dir = "nimpkgs/x/xgboost.nim/0_1_1";
  inputs."xgboost.nim-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xgboost.nim-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xgboost.nim-0_1_2".type = "github";
  inputs."xgboost.nim-0_1_2".owner = "riinr";
  inputs."xgboost.nim-0_1_2".repo = "flake-nimble";
  inputs."xgboost.nim-0_1_2".ref = "flake-pinning";
  inputs."xgboost.nim-0_1_2".dir = "nimpkgs/x/xgboost.nim/0_1_2";
  inputs."xgboost.nim-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xgboost.nim-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xgboost.nim-0_1_3".type = "github";
  inputs."xgboost.nim-0_1_3".owner = "riinr";
  inputs."xgboost.nim-0_1_3".repo = "flake-nimble";
  inputs."xgboost.nim-0_1_3".ref = "flake-pinning";
  inputs."xgboost.nim-0_1_3".dir = "nimpkgs/x/xgboost.nim/0_1_3";
  inputs."xgboost.nim-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xgboost.nim-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}