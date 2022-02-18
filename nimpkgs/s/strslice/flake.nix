{
  description = ''Simple implementation of string slices with some of the strutils ported or wrapped to work on them. String slices offer a performance enhancement when working with large amounts of slices from one base string'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."strslice-master".type = "github";
  inputs."strslice-master".owner = "riinr";
  inputs."strslice-master".repo = "flake-nimble";
  inputs."strslice-master".ref = "flake-pinning";
  inputs."strslice-master".dir = "nimpkgs/s/strslice/master";

    inputs."strslice-v0_2_0".type = "github";
  inputs."strslice-v0_2_0".owner = "riinr";
  inputs."strslice-v0_2_0".repo = "flake-nimble";
  inputs."strslice-v0_2_0".ref = "flake-pinning";
  inputs."strslice-v0_2_0".dir = "nimpkgs/s/strslice/v0_2_0";

    inputs."strslice-v0_2_1".type = "github";
  inputs."strslice-v0_2_1".owner = "riinr";
  inputs."strslice-v0_2_1".repo = "flake-nimble";
  inputs."strslice-v0_2_1".ref = "flake-pinning";
  inputs."strslice-v0_2_1".dir = "nimpkgs/s/strslice/v0_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}