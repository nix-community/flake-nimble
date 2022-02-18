{
  description = ''A Nim library to create and manage temporary directories.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."tempdir-master".type = "github";
  inputs."tempdir-master".owner = "riinr";
  inputs."tempdir-master".repo = "flake-nimble";
  inputs."tempdir-master".ref = "flake-pinning";
  inputs."tempdir-master".dir = "nimpkgs/t/tempdir/master";

    inputs."tempdir-v1_0_0".type = "github";
  inputs."tempdir-v1_0_0".owner = "riinr";
  inputs."tempdir-v1_0_0".repo = "flake-nimble";
  inputs."tempdir-v1_0_0".ref = "flake-pinning";
  inputs."tempdir-v1_0_0".dir = "nimpkgs/t/tempdir/v1_0_0";

    inputs."tempdir-v1_0_1".type = "github";
  inputs."tempdir-v1_0_1".owner = "riinr";
  inputs."tempdir-v1_0_1".repo = "flake-nimble";
  inputs."tempdir-v1_0_1".ref = "flake-pinning";
  inputs."tempdir-v1_0_1".dir = "nimpkgs/t/tempdir/v1_0_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}