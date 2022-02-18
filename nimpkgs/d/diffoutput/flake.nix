{
  description = ''Collection of Diff stringifications (and reversals)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."diffoutput-master".type = "github";
  inputs."diffoutput-master".owner = "riinr";
  inputs."diffoutput-master".repo = "flake-nimble";
  inputs."diffoutput-master".ref = "flake-pinning";
  inputs."diffoutput-master".dir = "nimpkgs/d/diffoutput/master";

    inputs."diffoutput-v0_1_1".type = "github";
  inputs."diffoutput-v0_1_1".owner = "riinr";
  inputs."diffoutput-v0_1_1".repo = "flake-nimble";
  inputs."diffoutput-v0_1_1".ref = "flake-pinning";
  inputs."diffoutput-v0_1_1".dir = "nimpkgs/d/diffoutput/v0_1_1";

    inputs."diffoutput-v0_1_2".type = "github";
  inputs."diffoutput-v0_1_2".owner = "riinr";
  inputs."diffoutput-v0_1_2".repo = "flake-nimble";
  inputs."diffoutput-v0_1_2".ref = "flake-pinning";
  inputs."diffoutput-v0_1_2".dir = "nimpkgs/d/diffoutput/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}