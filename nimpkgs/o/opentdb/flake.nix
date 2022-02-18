{
  description = ''Wrapper around the open trivia db api'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."opentdb-master".type = "github";
  inputs."opentdb-master".owner = "riinr";
  inputs."opentdb-master".repo = "flake-nimble";
  inputs."opentdb-master".ref = "flake-pinning";
  inputs."opentdb-master".dir = "nimpkgs/o/opentdb/master";

    inputs."opentdb-1_1_0".type = "github";
  inputs."opentdb-1_1_0".owner = "riinr";
  inputs."opentdb-1_1_0".repo = "flake-nimble";
  inputs."opentdb-1_1_0".ref = "flake-pinning";
  inputs."opentdb-1_1_0".dir = "nimpkgs/o/opentdb/1_1_0";

    inputs."opentdb-1_1_1".type = "github";
  inputs."opentdb-1_1_1".owner = "riinr";
  inputs."opentdb-1_1_1".repo = "flake-nimble";
  inputs."opentdb-1_1_1".ref = "flake-pinning";
  inputs."opentdb-1_1_1".dir = "nimpkgs/o/opentdb/1_1_1";

    inputs."opentdb-v1_0_2".type = "github";
  inputs."opentdb-v1_0_2".owner = "riinr";
  inputs."opentdb-v1_0_2".repo = "flake-nimble";
  inputs."opentdb-v1_0_2".ref = "flake-pinning";
  inputs."opentdb-v1_0_2".dir = "nimpkgs/o/opentdb/v1_0_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}