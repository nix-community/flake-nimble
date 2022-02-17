{
  description = ''Arduino bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."arduino-main".type = "github";
  inputs."arduino-main".owner = "riinr";
  inputs."arduino-main".repo = "flake-nimble";
  inputs."arduino-main".ref = "flake-pinning";
  inputs."arduino-main".dir = "nimpkgs/a/arduino/main";

    inputs."arduino-0_2_0".type = "github";
  inputs."arduino-0_2_0".owner = "riinr";
  inputs."arduino-0_2_0".repo = "flake-nimble";
  inputs."arduino-0_2_0".ref = "flake-pinning";
  inputs."arduino-0_2_0".dir = "nimpkgs/a/arduino/0_2_0";

    inputs."arduino-0_3_0".type = "github";
  inputs."arduino-0_3_0".owner = "riinr";
  inputs."arduino-0_3_0".repo = "flake-nimble";
  inputs."arduino-0_3_0".ref = "flake-pinning";
  inputs."arduino-0_3_0".dir = "nimpkgs/a/arduino/0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}