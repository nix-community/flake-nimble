{
  description = ''A nim wrapper for ArrayFire'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."ArrayFireNim-master".type = "github";
  inputs."ArrayFireNim-master".owner = "riinr";
  inputs."ArrayFireNim-master".repo = "flake-nimble";
  inputs."ArrayFireNim-master".ref = "flake-pinning";
  inputs."ArrayFireNim-master".dir = "nimpkgs/a/ArrayFireNim/master";

    inputs."ArrayFireNim-v0_1_0".type = "github";
  inputs."ArrayFireNim-v0_1_0".owner = "riinr";
  inputs."ArrayFireNim-v0_1_0".repo = "flake-nimble";
  inputs."ArrayFireNim-v0_1_0".ref = "flake-pinning";
  inputs."ArrayFireNim-v0_1_0".dir = "nimpkgs/a/ArrayFireNim/v0_1_0";

    inputs."ArrayFireNim-v0_2_0".type = "github";
  inputs."ArrayFireNim-v0_2_0".owner = "riinr";
  inputs."ArrayFireNim-v0_2_0".repo = "flake-nimble";
  inputs."ArrayFireNim-v0_2_0".ref = "flake-pinning";
  inputs."ArrayFireNim-v0_2_0".dir = "nimpkgs/a/ArrayFireNim/v0_2_0";

    inputs."ArrayFireNim-v0_2_1".type = "github";
  inputs."ArrayFireNim-v0_2_1".owner = "riinr";
  inputs."ArrayFireNim-v0_2_1".repo = "flake-nimble";
  inputs."ArrayFireNim-v0_2_1".ref = "flake-pinning";
  inputs."ArrayFireNim-v0_2_1".dir = "nimpkgs/a/ArrayFireNim/v0_2_1";

    inputs."ArrayFireNim-v0_2_2".type = "github";
  inputs."ArrayFireNim-v0_2_2".owner = "riinr";
  inputs."ArrayFireNim-v0_2_2".repo = "flake-nimble";
  inputs."ArrayFireNim-v0_2_2".ref = "flake-pinning";
  inputs."ArrayFireNim-v0_2_2".dir = "nimpkgs/a/ArrayFireNim/v0_2_2";

    inputs."ArrayFireNim-v0_2_3".type = "github";
  inputs."ArrayFireNim-v0_2_3".owner = "riinr";
  inputs."ArrayFireNim-v0_2_3".repo = "flake-nimble";
  inputs."ArrayFireNim-v0_2_3".ref = "flake-pinning";
  inputs."ArrayFireNim-v0_2_3".dir = "nimpkgs/a/ArrayFireNim/v0_2_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}