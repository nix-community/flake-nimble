{
  description = ''Nim interface to plotly'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."plotly-master".type = "github";
  inputs."plotly-master".owner = "riinr";
  inputs."plotly-master".repo = "flake-nimble";
  inputs."plotly-master".ref = "flake-pinning";
  inputs."plotly-master".dir = "nimpkgs/p/plotly/master";

    inputs."plotly-v0_2_0".type = "github";
  inputs."plotly-v0_2_0".owner = "riinr";
  inputs."plotly-v0_2_0".repo = "flake-nimble";
  inputs."plotly-v0_2_0".ref = "flake-pinning";
  inputs."plotly-v0_2_0".dir = "nimpkgs/p/plotly/v0_2_0";

    inputs."plotly-v0_2_1".type = "github";
  inputs."plotly-v0_2_1".owner = "riinr";
  inputs."plotly-v0_2_1".repo = "flake-nimble";
  inputs."plotly-v0_2_1".ref = "flake-pinning";
  inputs."plotly-v0_2_1".dir = "nimpkgs/p/plotly/v0_2_1";

    inputs."plotly-v0_3_0".type = "github";
  inputs."plotly-v0_3_0".owner = "riinr";
  inputs."plotly-v0_3_0".repo = "flake-nimble";
  inputs."plotly-v0_3_0".ref = "flake-pinning";
  inputs."plotly-v0_3_0".dir = "nimpkgs/p/plotly/v0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}