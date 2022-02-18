{
  description = ''meowhash wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."meow-master".type = "github";
  inputs."meow-master".owner = "riinr";
  inputs."meow-master".repo = "flake-nimble";
  inputs."meow-master".ref = "flake-pinning";
  inputs."meow-master".dir = "nimpkgs/m/meow/master";

    inputs."meow-0_1_0".type = "github";
  inputs."meow-0_1_0".owner = "riinr";
  inputs."meow-0_1_0".repo = "flake-nimble";
  inputs."meow-0_1_0".ref = "flake-pinning";
  inputs."meow-0_1_0".dir = "nimpkgs/m/meow/0_1_0";

    inputs."meow-0_2_0".type = "github";
  inputs."meow-0_2_0".owner = "riinr";
  inputs."meow-0_2_0".repo = "flake-nimble";
  inputs."meow-0_2_0".ref = "flake-pinning";
  inputs."meow-0_2_0".dir = "nimpkgs/m/meow/0_2_0";

    inputs."meow-v0_1_0".type = "github";
  inputs."meow-v0_1_0".owner = "riinr";
  inputs."meow-v0_1_0".repo = "flake-nimble";
  inputs."meow-v0_1_0".ref = "flake-pinning";
  inputs."meow-v0_1_0".dir = "nimpkgs/m/meow/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}