{
  description = ''Statistical tests in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."statistical_tests-master".type = "github";
  inputs."statistical_tests-master".owner = "riinr";
  inputs."statistical_tests-master".repo = "flake-nimble";
  inputs."statistical_tests-master".ref = "flake-pinning";
  inputs."statistical_tests-master".dir = "nimpkgs/s/statistical_tests/master";

    inputs."statistical_tests-v0_1_0".type = "github";
  inputs."statistical_tests-v0_1_0".owner = "riinr";
  inputs."statistical_tests-v0_1_0".repo = "flake-nimble";
  inputs."statistical_tests-v0_1_0".ref = "flake-pinning";
  inputs."statistical_tests-v0_1_0".dir = "nimpkgs/s/statistical_tests/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}