{
  description = ''A simple bitarray library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimbitarray-master".type = "github";
  inputs."nimbitarray-master".owner = "riinr";
  inputs."nimbitarray-master".repo = "flake-nimble";
  inputs."nimbitarray-master".ref = "flake-pinning";
  inputs."nimbitarray-master".dir = "nimpkgs/n/nimbitarray/master";

    inputs."nimbitarray-0_2_0".type = "github";
  inputs."nimbitarray-0_2_0".owner = "riinr";
  inputs."nimbitarray-0_2_0".repo = "flake-nimble";
  inputs."nimbitarray-0_2_0".ref = "flake-pinning";
  inputs."nimbitarray-0_2_0".dir = "nimpkgs/n/nimbitarray/0_2_0";

    inputs."nimbitarray-0_2_1".type = "github";
  inputs."nimbitarray-0_2_1".owner = "riinr";
  inputs."nimbitarray-0_2_1".repo = "flake-nimble";
  inputs."nimbitarray-0_2_1".ref = "flake-pinning";
  inputs."nimbitarray-0_2_1".dir = "nimpkgs/n/nimbitarray/0_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}