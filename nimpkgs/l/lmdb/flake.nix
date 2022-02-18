{
  description = ''A wrapper for LMDB the Lightning Memory-Mapped Database'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."lmdb-master".type = "github";
  inputs."lmdb-master".owner = "riinr";
  inputs."lmdb-master".repo = "flake-nimble";
  inputs."lmdb-master".ref = "flake-pinning";
  inputs."lmdb-master".dir = "nimpkgs/l/lmdb/master";

    inputs."lmdb-0_1_0".type = "github";
  inputs."lmdb-0_1_0".owner = "riinr";
  inputs."lmdb-0_1_0".repo = "flake-nimble";
  inputs."lmdb-0_1_0".ref = "flake-pinning";
  inputs."lmdb-0_1_0".dir = "nimpkgs/l/lmdb/0_1_0";

    inputs."lmdb-0_1_1".type = "github";
  inputs."lmdb-0_1_1".owner = "riinr";
  inputs."lmdb-0_1_1".repo = "flake-nimble";
  inputs."lmdb-0_1_1".ref = "flake-pinning";
  inputs."lmdb-0_1_1".dir = "nimpkgs/l/lmdb/0_1_1";

    inputs."lmdb-0_1_2".type = "github";
  inputs."lmdb-0_1_2".owner = "riinr";
  inputs."lmdb-0_1_2".repo = "flake-nimble";
  inputs."lmdb-0_1_2".ref = "flake-pinning";
  inputs."lmdb-0_1_2".dir = "nimpkgs/l/lmdb/0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}