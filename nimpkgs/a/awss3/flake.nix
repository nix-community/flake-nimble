{
  description = ''Amazon Simple Storage Service (AWS S3) basic API support.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."awss3-main".type = "github";
  inputs."awss3-main".owner = "riinr";
  inputs."awss3-main".repo = "flake-nimble";
  inputs."awss3-main".ref = "flake-pinning";
  inputs."awss3-main".dir = "nimpkgs/a/awss3/main";
  inputs."awss3-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awss3-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."awss3-v1_0_0".type = "github";
  inputs."awss3-v1_0_0".owner = "riinr";
  inputs."awss3-v1_0_0".repo = "flake-nimble";
  inputs."awss3-v1_0_0".ref = "flake-pinning";
  inputs."awss3-v1_0_0".dir = "nimpkgs/a/awss3/v1_0_0";
  inputs."awss3-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awss3-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."awss3-v1_0_1".type = "github";
  inputs."awss3-v1_0_1".owner = "riinr";
  inputs."awss3-v1_0_1".repo = "flake-nimble";
  inputs."awss3-v1_0_1".ref = "flake-pinning";
  inputs."awss3-v1_0_1".dir = "nimpkgs/a/awss3/v1_0_1";
  inputs."awss3-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awss3-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."awss3-v1_0_2".type = "github";
  inputs."awss3-v1_0_2".owner = "riinr";
  inputs."awss3-v1_0_2".repo = "flake-nimble";
  inputs."awss3-v1_0_2".ref = "flake-pinning";
  inputs."awss3-v1_0_2".dir = "nimpkgs/a/awss3/v1_0_2";
  inputs."awss3-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awss3-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."awss3-v1_0_3".type = "github";
  inputs."awss3-v1_0_3".owner = "riinr";
  inputs."awss3-v1_0_3".repo = "flake-nimble";
  inputs."awss3-v1_0_3".ref = "flake-pinning";
  inputs."awss3-v1_0_3".dir = "nimpkgs/a/awss3/v1_0_3";
  inputs."awss3-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awss3-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}