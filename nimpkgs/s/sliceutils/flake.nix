{
  description = ''Utilities for and extensions to Slice/HSlice'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."sliceutils-master".type = "github";
  inputs."sliceutils-master".owner = "riinr";
  inputs."sliceutils-master".repo = "flake-nimble";
  inputs."sliceutils-master".ref = "flake-pinning";
  inputs."sliceutils-master".dir = "nimpkgs/s/sliceutils/master";

    inputs."sliceutils-0_1_0".type = "github";
  inputs."sliceutils-0_1_0".owner = "riinr";
  inputs."sliceutils-0_1_0".repo = "flake-nimble";
  inputs."sliceutils-0_1_0".ref = "flake-pinning";
  inputs."sliceutils-0_1_0".dir = "nimpkgs/s/sliceutils/0_1_0";

    inputs."sliceutils-v0_1_0".type = "github";
  inputs."sliceutils-v0_1_0".owner = "riinr";
  inputs."sliceutils-v0_1_0".repo = "flake-nimble";
  inputs."sliceutils-v0_1_0".ref = "flake-pinning";
  inputs."sliceutils-v0_1_0".dir = "nimpkgs/s/sliceutils/v0_1_0";

    inputs."sliceutils-v0_1_1".type = "github";
  inputs."sliceutils-v0_1_1".owner = "riinr";
  inputs."sliceutils-v0_1_1".repo = "flake-nimble";
  inputs."sliceutils-v0_1_1".ref = "flake-pinning";
  inputs."sliceutils-v0_1_1".dir = "nimpkgs/s/sliceutils/v0_1_1";

    inputs."sliceutils-v0_1_12".type = "github";
  inputs."sliceutils-v0_1_12".owner = "riinr";
  inputs."sliceutils-v0_1_12".repo = "flake-nimble";
  inputs."sliceutils-v0_1_12".ref = "flake-pinning";
  inputs."sliceutils-v0_1_12".dir = "nimpkgs/s/sliceutils/v0_1_12";

    inputs."sliceutils-v0_1_2".type = "github";
  inputs."sliceutils-v0_1_2".owner = "riinr";
  inputs."sliceutils-v0_1_2".repo = "flake-nimble";
  inputs."sliceutils-v0_1_2".ref = "flake-pinning";
  inputs."sliceutils-v0_1_2".dir = "nimpkgs/s/sliceutils/v0_1_2";

    inputs."sliceutils-v0_2_0".type = "github";
  inputs."sliceutils-v0_2_0".owner = "riinr";
  inputs."sliceutils-v0_2_0".repo = "flake-nimble";
  inputs."sliceutils-v0_2_0".ref = "flake-pinning";
  inputs."sliceutils-v0_2_0".dir = "nimpkgs/s/sliceutils/v0_2_0";

    inputs."sliceutils-v0_2_1".type = "github";
  inputs."sliceutils-v0_2_1".owner = "riinr";
  inputs."sliceutils-v0_2_1".repo = "flake-nimble";
  inputs."sliceutils-v0_2_1".ref = "flake-pinning";
  inputs."sliceutils-v0_2_1".dir = "nimpkgs/s/sliceutils/v0_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}