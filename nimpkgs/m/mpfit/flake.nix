{
  description = ''A wrapper for the cMPFIT non-linear least squares fitting library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mpfit-master".type = "github";
  inputs."mpfit-master".owner = "riinr";
  inputs."mpfit-master".repo = "flake-nimble";
  inputs."mpfit-master".ref = "flake-pinning";
  inputs."mpfit-master".dir = "nimpkgs/m/mpfit/master";
  inputs."mpfit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpfit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpfit-v0_1_1".type = "github";
  inputs."mpfit-v0_1_1".owner = "riinr";
  inputs."mpfit-v0_1_1".repo = "flake-nimble";
  inputs."mpfit-v0_1_1".ref = "flake-pinning";
  inputs."mpfit-v0_1_1".dir = "nimpkgs/m/mpfit/v0_1_1";
  inputs."mpfit-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpfit-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpfit-v0_1_2".type = "github";
  inputs."mpfit-v0_1_2".owner = "riinr";
  inputs."mpfit-v0_1_2".repo = "flake-nimble";
  inputs."mpfit-v0_1_2".ref = "flake-pinning";
  inputs."mpfit-v0_1_2".dir = "nimpkgs/m/mpfit/v0_1_2";
  inputs."mpfit-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpfit-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}