{
  description = ''A dead simple, no-nonsense parser combinator library written in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."honeycomb-master".type = "github";
  inputs."honeycomb-master".owner = "riinr";
  inputs."honeycomb-master".repo = "flake-nimble";
  inputs."honeycomb-master".ref = "flake-pinning";
  inputs."honeycomb-master".dir = "nimpkgs/h/honeycomb/master";

    inputs."honeycomb-v0_1_0".type = "github";
  inputs."honeycomb-v0_1_0".owner = "riinr";
  inputs."honeycomb-v0_1_0".repo = "flake-nimble";
  inputs."honeycomb-v0_1_0".ref = "flake-pinning";
  inputs."honeycomb-v0_1_0".dir = "nimpkgs/h/honeycomb/v0_1_0";

    inputs."honeycomb-v0_1_1".type = "github";
  inputs."honeycomb-v0_1_1".owner = "riinr";
  inputs."honeycomb-v0_1_1".repo = "flake-nimble";
  inputs."honeycomb-v0_1_1".ref = "flake-pinning";
  inputs."honeycomb-v0_1_1".dir = "nimpkgs/h/honeycomb/v0_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}