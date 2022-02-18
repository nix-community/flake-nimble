{
  description = ''An entity-component-system with a focus on compile time optimisation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."polymorph-master".type = "github";
  inputs."polymorph-master".owner = "riinr";
  inputs."polymorph-master".repo = "flake-nimble";
  inputs."polymorph-master".ref = "flake-pinning";
  inputs."polymorph-master".dir = "nimpkgs/p/polymorph/master";

    inputs."Polymorph-v0_1_0".type = "github";
  inputs."Polymorph-v0_1_0".owner = "riinr";
  inputs."Polymorph-v0_1_0".repo = "flake-nimble";
  inputs."Polymorph-v0_1_0".ref = "flake-pinning";
  inputs."Polymorph-v0_1_0".dir = "nimpkgs/p/polymorph/v0_1_0";

    inputs."Polymorph-v0_2_0".type = "github";
  inputs."Polymorph-v0_2_0".owner = "riinr";
  inputs."Polymorph-v0_2_0".repo = "flake-nimble";
  inputs."Polymorph-v0_2_0".ref = "flake-pinning";
  inputs."Polymorph-v0_2_0".dir = "nimpkgs/p/polymorph/v0_2_0";

    inputs."Polymorph-v0_2_1".type = "github";
  inputs."Polymorph-v0_2_1".owner = "riinr";
  inputs."Polymorph-v0_2_1".repo = "flake-nimble";
  inputs."Polymorph-v0_2_1".ref = "flake-pinning";
  inputs."Polymorph-v0_2_1".dir = "nimpkgs/p/polymorph/v0_2_1";

    inputs."polymorph-v0_2_2".type = "github";
  inputs."polymorph-v0_2_2".owner = "riinr";
  inputs."polymorph-v0_2_2".repo = "flake-nimble";
  inputs."polymorph-v0_2_2".ref = "flake-pinning";
  inputs."polymorph-v0_2_2".dir = "nimpkgs/p/polymorph/v0_2_2";

    inputs."polymorph-v0_2_3".type = "github";
  inputs."polymorph-v0_2_3".owner = "riinr";
  inputs."polymorph-v0_2_3".repo = "flake-nimble";
  inputs."polymorph-v0_2_3".ref = "flake-pinning";
  inputs."polymorph-v0_2_3".dir = "nimpkgs/p/polymorph/v0_2_3";

    inputs."polymorph-v0_3_0".type = "github";
  inputs."polymorph-v0_3_0".owner = "riinr";
  inputs."polymorph-v0_3_0".repo = "flake-nimble";
  inputs."polymorph-v0_3_0".ref = "flake-pinning";
  inputs."polymorph-v0_3_0".dir = "nimpkgs/p/polymorph/v0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}