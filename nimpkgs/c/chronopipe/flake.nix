{
  description = ''Show start/end datetime and duration of a command-line process using pipe.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."chronopipe-master".type = "github";
  inputs."chronopipe-master".owner = "riinr";
  inputs."chronopipe-master".repo = "flake-nimble";
  inputs."chronopipe-master".ref = "flake-pinning";
  inputs."chronopipe-master".dir = "nimpkgs/c/chronopipe/master";

    inputs."chronopipe-v0_1_0".type = "github";
  inputs."chronopipe-v0_1_0".owner = "riinr";
  inputs."chronopipe-v0_1_0".repo = "flake-nimble";
  inputs."chronopipe-v0_1_0".ref = "flake-pinning";
  inputs."chronopipe-v0_1_0".dir = "nimpkgs/c/chronopipe/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}