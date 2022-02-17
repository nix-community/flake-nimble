{
  description = ''Allows statistics to be sent to and recorded in Google Analytics.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."analytics-master".type = "github";
  inputs."analytics-master".owner = "riinr";
  inputs."analytics-master".repo = "flake-nimble";
  inputs."analytics-master".ref = "flake-pinning";
  inputs."analytics-master".dir = "nimpkgs/a/analytics/master";

    inputs."analytics-v0_2_0".type = "github";
  inputs."analytics-v0_2_0".owner = "riinr";
  inputs."analytics-v0_2_0".repo = "flake-nimble";
  inputs."analytics-v0_2_0".ref = "flake-pinning";
  inputs."analytics-v0_2_0".dir = "nimpkgs/a/analytics/v0_2_0";

    inputs."analytics-v0_3_0".type = "github";
  inputs."analytics-v0_3_0".owner = "riinr";
  inputs."analytics-v0_3_0".repo = "flake-nimble";
  inputs."analytics-v0_3_0".ref = "flake-pinning";
  inputs."analytics-v0_3_0".dir = "nimpkgs/a/analytics/v0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}