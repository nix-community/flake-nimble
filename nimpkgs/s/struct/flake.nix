{
  description = ''Python-like 'struct' for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."struct-master".type = "github";
  inputs."struct-master".owner = "riinr";
  inputs."struct-master".repo = "flake-nimble";
  inputs."struct-master".ref = "flake-pinning";
  inputs."struct-master".dir = "nimpkgs/s/struct/master";

    inputs."struct-v0_1_0".type = "github";
  inputs."struct-v0_1_0".owner = "riinr";
  inputs."struct-v0_1_0".repo = "flake-nimble";
  inputs."struct-v0_1_0".ref = "flake-pinning";
  inputs."struct-v0_1_0".dir = "nimpkgs/s/struct/v0_1_0";

    inputs."struct-v0_1_1".type = "github";
  inputs."struct-v0_1_1".owner = "riinr";
  inputs."struct-v0_1_1".repo = "flake-nimble";
  inputs."struct-v0_1_1".ref = "flake-pinning";
  inputs."struct-v0_1_1".dir = "nimpkgs/s/struct/v0_1_1";

    inputs."struct-v0_1_2".type = "github";
  inputs."struct-v0_1_2".owner = "riinr";
  inputs."struct-v0_1_2".repo = "flake-nimble";
  inputs."struct-v0_1_2".ref = "flake-pinning";
  inputs."struct-v0_1_2".dir = "nimpkgs/s/struct/v0_1_2";

    inputs."struct-v0_2_0".type = "github";
  inputs."struct-v0_2_0".owner = "riinr";
  inputs."struct-v0_2_0".repo = "flake-nimble";
  inputs."struct-v0_2_0".ref = "flake-pinning";
  inputs."struct-v0_2_0".dir = "nimpkgs/s/struct/v0_2_0";

    inputs."struct-v0_2_1".type = "github";
  inputs."struct-v0_2_1".owner = "riinr";
  inputs."struct-v0_2_1".repo = "flake-nimble";
  inputs."struct-v0_2_1".ref = "flake-pinning";
  inputs."struct-v0_2_1".dir = "nimpkgs/s/struct/v0_2_1";

    inputs."struct-v0_2_2".type = "github";
  inputs."struct-v0_2_2".owner = "riinr";
  inputs."struct-v0_2_2".repo = "flake-nimble";
  inputs."struct-v0_2_2".ref = "flake-pinning";
  inputs."struct-v0_2_2".dir = "nimpkgs/s/struct/v0_2_2";

    inputs."struct-v0_2_3".type = "github";
  inputs."struct-v0_2_3".owner = "riinr";
  inputs."struct-v0_2_3".repo = "flake-nimble";
  inputs."struct-v0_2_3".ref = "flake-pinning";
  inputs."struct-v0_2_3".dir = "nimpkgs/s/struct/v0_2_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}