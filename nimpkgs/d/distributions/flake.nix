{
  description = ''Distributions is a Nim library for distributions and their functions.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."distributions-master".type = "github";
  inputs."distributions-master".owner = "riinr";
  inputs."distributions-master".repo = "flake-nimble";
  inputs."distributions-master".ref = "flake-pinning";
  inputs."distributions-master".dir = "nimpkgs/d/distributions/master";

    inputs."distributions-v0_1_0".type = "github";
  inputs."distributions-v0_1_0".owner = "riinr";
  inputs."distributions-v0_1_0".repo = "flake-nimble";
  inputs."distributions-v0_1_0".ref = "flake-pinning";
  inputs."distributions-v0_1_0".dir = "nimpkgs/d/distributions/v0_1_0";

    inputs."distributions-v0_1_1".type = "github";
  inputs."distributions-v0_1_1".owner = "riinr";
  inputs."distributions-v0_1_1".repo = "flake-nimble";
  inputs."distributions-v0_1_1".ref = "flake-pinning";
  inputs."distributions-v0_1_1".dir = "nimpkgs/d/distributions/v0_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}