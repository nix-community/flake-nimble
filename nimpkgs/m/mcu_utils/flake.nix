{
  description = ''Utilities and simple helpers for programming with Nim on embedded MCU devices'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."mcu_utils-main".type = "github";
  inputs."mcu_utils-main".owner = "riinr";
  inputs."mcu_utils-main".repo = "flake-nimble";
  inputs."mcu_utils-main".ref = "flake-pinning";
  inputs."mcu_utils-main".dir = "nimpkgs/m/mcu_utils/main";

    inputs."mcu_utils-v0_1_0".type = "github";
  inputs."mcu_utils-v0_1_0".owner = "riinr";
  inputs."mcu_utils-v0_1_0".repo = "flake-nimble";
  inputs."mcu_utils-v0_1_0".ref = "flake-pinning";
  inputs."mcu_utils-v0_1_0".dir = "nimpkgs/m/mcu_utils/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}