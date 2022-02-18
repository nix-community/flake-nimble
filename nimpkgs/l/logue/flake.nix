{
  description = ''Command line tools for Prologue.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."logue-master".type = "github";
  inputs."logue-master".owner = "riinr";
  inputs."logue-master".repo = "flake-nimble";
  inputs."logue-master".ref = "flake-pinning";
  inputs."logue-master".dir = "nimpkgs/l/logue/master";

    inputs."logue-v0_1_0".type = "github";
  inputs."logue-v0_1_0".owner = "riinr";
  inputs."logue-v0_1_0".repo = "flake-nimble";
  inputs."logue-v0_1_0".ref = "flake-pinning";
  inputs."logue-v0_1_0".dir = "nimpkgs/l/logue/v0_1_0";

    inputs."logue-v0_1_2".type = "github";
  inputs."logue-v0_1_2".owner = "riinr";
  inputs."logue-v0_1_2".repo = "flake-nimble";
  inputs."logue-v0_1_2".ref = "flake-pinning";
  inputs."logue-v0_1_2".dir = "nimpkgs/l/logue/v0_1_2";

    inputs."logue-v0_1_6".type = "github";
  inputs."logue-v0_1_6".owner = "riinr";
  inputs."logue-v0_1_6".repo = "flake-nimble";
  inputs."logue-v0_1_6".ref = "flake-pinning";
  inputs."logue-v0_1_6".dir = "nimpkgs/l/logue/v0_1_6";

    inputs."logue-v0_1_8".type = "github";
  inputs."logue-v0_1_8".owner = "riinr";
  inputs."logue-v0_1_8".repo = "flake-nimble";
  inputs."logue-v0_1_8".ref = "flake-pinning";
  inputs."logue-v0_1_8".dir = "nimpkgs/l/logue/v0_1_8";

    inputs."logue-v0_2_0".type = "github";
  inputs."logue-v0_2_0".owner = "riinr";
  inputs."logue-v0_2_0".repo = "flake-nimble";
  inputs."logue-v0_2_0".ref = "flake-pinning";
  inputs."logue-v0_2_0".dir = "nimpkgs/l/logue/v0_2_0";

    inputs."logue-v0_2_2".type = "github";
  inputs."logue-v0_2_2".owner = "riinr";
  inputs."logue-v0_2_2".repo = "flake-nimble";
  inputs."logue-v0_2_2".ref = "flake-pinning";
  inputs."logue-v0_2_2".dir = "nimpkgs/l/logue/v0_2_2";

    inputs."logue-v0_2_4".type = "github";
  inputs."logue-v0_2_4".owner = "riinr";
  inputs."logue-v0_2_4".repo = "flake-nimble";
  inputs."logue-v0_2_4".ref = "flake-pinning";
  inputs."logue-v0_2_4".dir = "nimpkgs/l/logue/v0_2_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}