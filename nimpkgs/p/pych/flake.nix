{
  description = ''A tool that watches Python files and re-runs them on change.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pych-master".type = "github";
  inputs."pych-master".owner = "riinr";
  inputs."pych-master".repo = "flake-nimble";
  inputs."pych-master".ref = "flake-pinning";
  inputs."pych-master".dir = "nimpkgs/p/pych/master";
  inputs."pych-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pych-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pych-v1_0_0".type = "github";
  inputs."pych-v1_0_0".owner = "riinr";
  inputs."pych-v1_0_0".repo = "flake-nimble";
  inputs."pych-v1_0_0".ref = "flake-pinning";
  inputs."pych-v1_0_0".dir = "nimpkgs/p/pych/v1_0_0";
  inputs."pych-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pych-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pych-v1_0_1".type = "github";
  inputs."pych-v1_0_1".owner = "riinr";
  inputs."pych-v1_0_1".repo = "flake-nimble";
  inputs."pych-v1_0_1".ref = "flake-pinning";
  inputs."pych-v1_0_1".dir = "nimpkgs/p/pych/v1_0_1";
  inputs."pych-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pych-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pych-v1_0_2".type = "github";
  inputs."pych-v1_0_2".owner = "riinr";
  inputs."pych-v1_0_2".repo = "flake-nimble";
  inputs."pych-v1_0_2".ref = "flake-pinning";
  inputs."pych-v1_0_2".dir = "nimpkgs/p/pych/v1_0_2";
  inputs."pych-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pych-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}