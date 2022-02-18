{
  description = ''C Tox core wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."toxcore-master".type = "github";
  inputs."toxcore-master".owner = "riinr";
  inputs."toxcore-master".repo = "flake-nimble";
  inputs."toxcore-master".ref = "flake-pinning";
  inputs."toxcore-master".dir = "nimpkgs/t/toxcore/master";

    inputs."toxcore-0_4_1".type = "github";
  inputs."toxcore-0_4_1".owner = "riinr";
  inputs."toxcore-0_4_1".repo = "flake-nimble";
  inputs."toxcore-0_4_1".ref = "flake-pinning";
  inputs."toxcore-0_4_1".dir = "nimpkgs/t/toxcore/0_4_1";

    inputs."toxcore-v0_1_0".type = "github";
  inputs."toxcore-v0_1_0".owner = "riinr";
  inputs."toxcore-v0_1_0".repo = "flake-nimble";
  inputs."toxcore-v0_1_0".ref = "flake-pinning";
  inputs."toxcore-v0_1_0".dir = "nimpkgs/t/toxcore/v0_1_0";

    inputs."toxcore-v0_1_1".type = "github";
  inputs."toxcore-v0_1_1".owner = "riinr";
  inputs."toxcore-v0_1_1".repo = "flake-nimble";
  inputs."toxcore-v0_1_1".ref = "flake-pinning";
  inputs."toxcore-v0_1_1".dir = "nimpkgs/t/toxcore/v0_1_1";

    inputs."toxcore-v0_2_0".type = "github";
  inputs."toxcore-v0_2_0".owner = "riinr";
  inputs."toxcore-v0_2_0".repo = "flake-nimble";
  inputs."toxcore-v0_2_0".ref = "flake-pinning";
  inputs."toxcore-v0_2_0".dir = "nimpkgs/t/toxcore/v0_2_0";

    inputs."toxcore-v0_2_1".type = "github";
  inputs."toxcore-v0_2_1".owner = "riinr";
  inputs."toxcore-v0_2_1".repo = "flake-nimble";
  inputs."toxcore-v0_2_1".ref = "flake-pinning";
  inputs."toxcore-v0_2_1".dir = "nimpkgs/t/toxcore/v0_2_1";

    inputs."toxcore-v0_3_0".type = "github";
  inputs."toxcore-v0_3_0".owner = "riinr";
  inputs."toxcore-v0_3_0".repo = "flake-nimble";
  inputs."toxcore-v0_3_0".ref = "flake-pinning";
  inputs."toxcore-v0_3_0".dir = "nimpkgs/t/toxcore/v0_3_0";

    inputs."toxcore-v0_3_1".type = "github";
  inputs."toxcore-v0_3_1".owner = "riinr";
  inputs."toxcore-v0_3_1".repo = "flake-nimble";
  inputs."toxcore-v0_3_1".ref = "flake-pinning";
  inputs."toxcore-v0_3_1".dir = "nimpkgs/t/toxcore/v0_3_1";

    inputs."toxcore-v0_4_0".type = "github";
  inputs."toxcore-v0_4_0".owner = "riinr";
  inputs."toxcore-v0_4_0".repo = "flake-nimble";
  inputs."toxcore-v0_4_0".ref = "flake-pinning";
  inputs."toxcore-v0_4_0".dir = "nimpkgs/t/toxcore/v0_4_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}