{
  description = ''A nimble package which provides user-defined types, procedures, etc...'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."oolib-develop".type = "github";
  inputs."oolib-develop".owner = "riinr";
  inputs."oolib-develop".repo = "flake-nimble";
  inputs."oolib-develop".ref = "flake-pinning";
  inputs."oolib-develop".dir = "nimpkgs/o/oolib/develop";

    inputs."oolib-main".type = "github";
  inputs."oolib-main".owner = "riinr";
  inputs."oolib-main".repo = "flake-nimble";
  inputs."oolib-main".ref = "flake-pinning";
  inputs."oolib-main".dir = "nimpkgs/o/oolib/main";

    inputs."oolib-0_1_0".type = "github";
  inputs."oolib-0_1_0".owner = "riinr";
  inputs."oolib-0_1_0".repo = "flake-nimble";
  inputs."oolib-0_1_0".ref = "flake-pinning";
  inputs."oolib-0_1_0".dir = "nimpkgs/o/oolib/0_1_0";

    inputs."oolib-0_2_0".type = "github";
  inputs."oolib-0_2_0".owner = "riinr";
  inputs."oolib-0_2_0".repo = "flake-nimble";
  inputs."oolib-0_2_0".ref = "flake-pinning";
  inputs."oolib-0_2_0".dir = "nimpkgs/o/oolib/0_2_0";

    inputs."oolib-0_2_1".type = "github";
  inputs."oolib-0_2_1".owner = "riinr";
  inputs."oolib-0_2_1".repo = "flake-nimble";
  inputs."oolib-0_2_1".ref = "flake-pinning";
  inputs."oolib-0_2_1".dir = "nimpkgs/o/oolib/0_2_1";

    inputs."oolib-0_2_2".type = "github";
  inputs."oolib-0_2_2".owner = "riinr";
  inputs."oolib-0_2_2".repo = "flake-nimble";
  inputs."oolib-0_2_2".ref = "flake-pinning";
  inputs."oolib-0_2_2".dir = "nimpkgs/o/oolib/0_2_2";

    inputs."oolib-0_3_0".type = "github";
  inputs."oolib-0_3_0".owner = "riinr";
  inputs."oolib-0_3_0".repo = "flake-nimble";
  inputs."oolib-0_3_0".ref = "flake-pinning";
  inputs."oolib-0_3_0".dir = "nimpkgs/o/oolib/0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}