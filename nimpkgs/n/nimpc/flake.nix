{
  description = ''Secure multi-party computation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."NiMPC-master".type = "github";
  inputs."NiMPC-master".owner = "riinr";
  inputs."NiMPC-master".repo = "flake-nimble";
  inputs."NiMPC-master".ref = "flake-pinning";
  inputs."NiMPC-master".dir = "nimpkgs/n/NiMPC/master";

    inputs."NiMPC-v0_1_0".type = "github";
  inputs."NiMPC-v0_1_0".owner = "riinr";
  inputs."NiMPC-v0_1_0".repo = "flake-nimble";
  inputs."NiMPC-v0_1_0".ref = "flake-pinning";
  inputs."NiMPC-v0_1_0".dir = "nimpkgs/n/NiMPC/v0_1_0";

    inputs."NiMPC-v0_2_0".type = "github";
  inputs."NiMPC-v0_2_0".owner = "riinr";
  inputs."NiMPC-v0_2_0".repo = "flake-nimble";
  inputs."NiMPC-v0_2_0".ref = "flake-pinning";
  inputs."NiMPC-v0_2_0".dir = "nimpkgs/n/NiMPC/v0_2_0";

    inputs."NiMPC-v0_3_0".type = "github";
  inputs."NiMPC-v0_3_0".owner = "riinr";
  inputs."NiMPC-v0_3_0".repo = "flake-nimble";
  inputs."NiMPC-v0_3_0".ref = "flake-pinning";
  inputs."NiMPC-v0_3_0".dir = "nimpkgs/n/NiMPC/v0_3_0";

    inputs."NiMPC-v0_4_0".type = "github";
  inputs."NiMPC-v0_4_0".owner = "riinr";
  inputs."NiMPC-v0_4_0".repo = "flake-nimble";
  inputs."NiMPC-v0_4_0".ref = "flake-pinning";
  inputs."NiMPC-v0_4_0".dir = "nimpkgs/n/NiMPC/v0_4_0";

    inputs."NiMPC-v0_4_1".type = "github";
  inputs."NiMPC-v0_4_1".owner = "riinr";
  inputs."NiMPC-v0_4_1".repo = "flake-nimble";
  inputs."NiMPC-v0_4_1".ref = "flake-pinning";
  inputs."NiMPC-v0_4_1".dir = "nimpkgs/n/NiMPC/v0_4_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}