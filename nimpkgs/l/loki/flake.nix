{
  description = ''A small library for writing cli programs in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."loki-master".type = "github";
  inputs."loki-master".owner = "riinr";
  inputs."loki-master".repo = "flake-nimble";
  inputs."loki-master".ref = "flake-pinning";
  inputs."loki-master".dir = "nimpkgs/l/loki/master";

    inputs."loki-0_1_0".type = "github";
  inputs."loki-0_1_0".owner = "riinr";
  inputs."loki-0_1_0".repo = "flake-nimble";
  inputs."loki-0_1_0".ref = "flake-pinning";
  inputs."loki-0_1_0".dir = "nimpkgs/l/loki/0_1_0";

    inputs."loki-0_1_1".type = "github";
  inputs."loki-0_1_1".owner = "riinr";
  inputs."loki-0_1_1".repo = "flake-nimble";
  inputs."loki-0_1_1".ref = "flake-pinning";
  inputs."loki-0_1_1".dir = "nimpkgs/l/loki/0_1_1";

    inputs."loki-0_2_0".type = "github";
  inputs."loki-0_2_0".owner = "riinr";
  inputs."loki-0_2_0".repo = "flake-nimble";
  inputs."loki-0_2_0".ref = "flake-pinning";
  inputs."loki-0_2_0".dir = "nimpkgs/l/loki/0_2_0";

    inputs."loki-0_3_0".type = "github";
  inputs."loki-0_3_0".owner = "riinr";
  inputs."loki-0_3_0".repo = "flake-nimble";
  inputs."loki-0_3_0".ref = "flake-pinning";
  inputs."loki-0_3_0".dir = "nimpkgs/l/loki/0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}