{
  description = ''A high-performance ini parse library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."parseini-master".type = "github";
  inputs."parseini-master".owner = "riinr";
  inputs."parseini-master".repo = "flake-nimble";
  inputs."parseini-master".ref = "flake-pinning";
  inputs."parseini-master".dir = "nimpkgs/p/parseini/master";

    inputs."parseini-0_1_0".type = "github";
  inputs."parseini-0_1_0".owner = "riinr";
  inputs."parseini-0_1_0".repo = "flake-nimble";
  inputs."parseini-0_1_0".ref = "flake-pinning";
  inputs."parseini-0_1_0".dir = "nimpkgs/p/parseini/0_1_0";

    inputs."parseini-0_2_0".type = "github";
  inputs."parseini-0_2_0".owner = "riinr";
  inputs."parseini-0_2_0".repo = "flake-nimble";
  inputs."parseini-0_2_0".ref = "flake-pinning";
  inputs."parseini-0_2_0".dir = "nimpkgs/p/parseini/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}