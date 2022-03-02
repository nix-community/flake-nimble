{
  description = ''A Matrix (https://matrix.org) client and appservice API wrapper for Nim!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."matrixsdk-main".type = "github";
  inputs."matrixsdk-main".owner = "riinr";
  inputs."matrixsdk-main".repo = "flake-nimble";
  inputs."matrixsdk-main".ref = "flake-pinning";
  inputs."matrixsdk-main".dir = "nimpkgs/m/matrixsdk/main";
  inputs."matrixsdk-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matrixsdk-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."matrixsdk-0_1_0".type = "github";
  inputs."matrixsdk-0_1_0".owner = "riinr";
  inputs."matrixsdk-0_1_0".repo = "flake-nimble";
  inputs."matrixsdk-0_1_0".ref = "flake-pinning";
  inputs."matrixsdk-0_1_0".dir = "nimpkgs/m/matrixsdk/0_1_0";
  inputs."matrixsdk-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matrixsdk-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}