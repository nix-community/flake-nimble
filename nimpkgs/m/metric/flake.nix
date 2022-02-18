{
  description = ''Dimensionful types and dimensional analysis.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."metric-master".type = "github";
  inputs."metric-master".owner = "riinr";
  inputs."metric-master".repo = "flake-nimble";
  inputs."metric-master".ref = "flake-pinning";
  inputs."metric-master".dir = "nimpkgs/m/metric/master";

    inputs."metric-v0_1_0".type = "github";
  inputs."metric-v0_1_0".owner = "riinr";
  inputs."metric-v0_1_0".repo = "flake-nimble";
  inputs."metric-v0_1_0".ref = "flake-pinning";
  inputs."metric-v0_1_0".dir = "nimpkgs/m/metric/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}