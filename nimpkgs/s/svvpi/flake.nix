{
  description = ''Wrapper for SystemVerilog VPI headers vpi_user.h and sv_vpi_user.h'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."svvpi-main".type = "github";
  inputs."svvpi-main".owner = "riinr";
  inputs."svvpi-main".repo = "flake-nimble";
  inputs."svvpi-main".ref = "flake-pinning";
  inputs."svvpi-main".dir = "nimpkgs/s/svvpi/main";

    inputs."svvpi-v0_0_1".type = "github";
  inputs."svvpi-v0_0_1".owner = "riinr";
  inputs."svvpi-v0_0_1".repo = "flake-nimble";
  inputs."svvpi-v0_0_1".ref = "flake-pinning";
  inputs."svvpi-v0_0_1".dir = "nimpkgs/s/svvpi/v0_0_1";

    inputs."svvpi-v0_0_2".type = "github";
  inputs."svvpi-v0_0_2".owner = "riinr";
  inputs."svvpi-v0_0_2".repo = "flake-nimble";
  inputs."svvpi-v0_0_2".ref = "flake-pinning";
  inputs."svvpi-v0_0_2".dir = "nimpkgs/s/svvpi/v0_0_2";

    inputs."svvpi-v0_0_3".type = "github";
  inputs."svvpi-v0_0_3".owner = "riinr";
  inputs."svvpi-v0_0_3".repo = "flake-nimble";
  inputs."svvpi-v0_0_3".ref = "flake-pinning";
  inputs."svvpi-v0_0_3".dir = "nimpkgs/s/svvpi/v0_0_3";

    inputs."svvpi-v0_0_4".type = "github";
  inputs."svvpi-v0_0_4".owner = "riinr";
  inputs."svvpi-v0_0_4".repo = "flake-nimble";
  inputs."svvpi-v0_0_4".ref = "flake-pinning";
  inputs."svvpi-v0_0_4".dir = "nimpkgs/s/svvpi/v0_0_4";

    inputs."svvpi-v0_0_5".type = "github";
  inputs."svvpi-v0_0_5".owner = "riinr";
  inputs."svvpi-v0_0_5".repo = "flake-nimble";
  inputs."svvpi-v0_0_5".ref = "flake-pinning";
  inputs."svvpi-v0_0_5".dir = "nimpkgs/s/svvpi/v0_0_5";

    inputs."svvpi-v0_0_6".type = "github";
  inputs."svvpi-v0_0_6".owner = "riinr";
  inputs."svvpi-v0_0_6".repo = "flake-nimble";
  inputs."svvpi-v0_0_6".ref = "flake-pinning";
  inputs."svvpi-v0_0_6".dir = "nimpkgs/s/svvpi/v0_0_6";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}