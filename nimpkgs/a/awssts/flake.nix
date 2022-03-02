{
  description = ''AWS Security Token Service API in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."awssts-main".type = "github";
  inputs."awssts-main".owner = "riinr";
  inputs."awssts-main".repo = "flake-nimble";
  inputs."awssts-main".ref = "flake-pinning";
  inputs."awssts-main".dir = "nimpkgs/a/awssts/main";
  inputs."awssts-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awssts-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."awssts-v1_0_0".type = "github";
  inputs."awssts-v1_0_0".owner = "riinr";
  inputs."awssts-v1_0_0".repo = "flake-nimble";
  inputs."awssts-v1_0_0".ref = "flake-pinning";
  inputs."awssts-v1_0_0".dir = "nimpkgs/a/awssts/v1_0_0";
  inputs."awssts-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awssts-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."awssts-v1_0_1".type = "github";
  inputs."awssts-v1_0_1".owner = "riinr";
  inputs."awssts-v1_0_1".repo = "flake-nimble";
  inputs."awssts-v1_0_1".ref = "flake-pinning";
  inputs."awssts-v1_0_1".dir = "nimpkgs/a/awssts/v1_0_1";
  inputs."awssts-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awssts-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."awssts-v1_0_2".type = "github";
  inputs."awssts-v1_0_2".owner = "riinr";
  inputs."awssts-v1_0_2".repo = "flake-nimble";
  inputs."awssts-v1_0_2".ref = "flake-pinning";
  inputs."awssts-v1_0_2".dir = "nimpkgs/a/awssts/v1_0_2";
  inputs."awssts-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awssts-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}