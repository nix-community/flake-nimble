{
  description = ''A Nim wrapper for Python's matplotlib'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."matplotnim-master".type = "github";
  inputs."matplotnim-master".owner = "riinr";
  inputs."matplotnim-master".repo = "flake-nimble";
  inputs."matplotnim-master".ref = "flake-pinning";
  inputs."matplotnim-master".dir = "nimpkgs/m/matplotnim/master";

    inputs."matplotnim-v0_1_0".type = "github";
  inputs."matplotnim-v0_1_0".owner = "riinr";
  inputs."matplotnim-v0_1_0".repo = "flake-nimble";
  inputs."matplotnim-v0_1_0".ref = "flake-pinning";
  inputs."matplotnim-v0_1_0".dir = "nimpkgs/m/matplotnim/v0_1_0";

    inputs."matplotnim-v0_2_0".type = "github";
  inputs."matplotnim-v0_2_0".owner = "riinr";
  inputs."matplotnim-v0_2_0".repo = "flake-nimble";
  inputs."matplotnim-v0_2_0".ref = "flake-pinning";
  inputs."matplotnim-v0_2_0".dir = "nimpkgs/m/matplotnim/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}