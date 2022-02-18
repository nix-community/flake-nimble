{
  description = ''Utility macros for easier handling of options in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."optionsutils-master".type = "github";
  inputs."optionsutils-master".owner = "riinr";
  inputs."optionsutils-master".repo = "flake-nimble";
  inputs."optionsutils-master".ref = "flake-pinning";
  inputs."optionsutils-master".dir = "nimpkgs/o/optionsutils/master";

    inputs."optionsutils-v1_1_0".type = "github";
  inputs."optionsutils-v1_1_0".owner = "riinr";
  inputs."optionsutils-v1_1_0".repo = "flake-nimble";
  inputs."optionsutils-v1_1_0".ref = "flake-pinning";
  inputs."optionsutils-v1_1_0".dir = "nimpkgs/o/optionsutils/v1_1_0";

    inputs."optionsutils-v1_1_1".type = "github";
  inputs."optionsutils-v1_1_1".owner = "riinr";
  inputs."optionsutils-v1_1_1".repo = "flake-nimble";
  inputs."optionsutils-v1_1_1".ref = "flake-pinning";
  inputs."optionsutils-v1_1_1".dir = "nimpkgs/o/optionsutils/v1_1_1";

    inputs."optionsutils-v1_1_2".type = "github";
  inputs."optionsutils-v1_1_2".owner = "riinr";
  inputs."optionsutils-v1_1_2".repo = "flake-nimble";
  inputs."optionsutils-v1_1_2".ref = "flake-pinning";
  inputs."optionsutils-v1_1_2".dir = "nimpkgs/o/optionsutils/v1_1_2";

    inputs."optionsutils-v1_2_0".type = "github";
  inputs."optionsutils-v1_2_0".owner = "riinr";
  inputs."optionsutils-v1_2_0".repo = "flake-nimble";
  inputs."optionsutils-v1_2_0".ref = "flake-pinning";
  inputs."optionsutils-v1_2_0".dir = "nimpkgs/o/optionsutils/v1_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}