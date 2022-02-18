{
  description = ''Algebraic structures and related operations for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."emmy-master".type = "github";
  inputs."emmy-master".owner = "riinr";
  inputs."emmy-master".repo = "flake-nimble";
  inputs."emmy-master".ref = "flake-pinning";
  inputs."emmy-master".dir = "nimpkgs/e/emmy/master";

    inputs."emmy-0_1_0".type = "github";
  inputs."emmy-0_1_0".owner = "riinr";
  inputs."emmy-0_1_0".repo = "flake-nimble";
  inputs."emmy-0_1_0".ref = "flake-pinning";
  inputs."emmy-0_1_0".dir = "nimpkgs/e/emmy/0_1_0";

    inputs."emmy-0_2_0".type = "github";
  inputs."emmy-0_2_0".owner = "riinr";
  inputs."emmy-0_2_0".repo = "flake-nimble";
  inputs."emmy-0_2_0".ref = "flake-pinning";
  inputs."emmy-0_2_0".dir = "nimpkgs/e/emmy/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}