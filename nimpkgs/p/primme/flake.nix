{
  description = ''Nim interface for PRIMME: PReconditioned Iterative MultiMethod Eigensolver'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."primme-master".type = "github";
  inputs."primme-master".owner = "riinr";
  inputs."primme-master".repo = "flake-nimble";
  inputs."primme-master".ref = "flake-pinning";
  inputs."primme-master".dir = "nimpkgs/p/primme/master";

    inputs."primme-v0_0_0".type = "github";
  inputs."primme-v0_0_0".owner = "riinr";
  inputs."primme-v0_0_0".repo = "flake-nimble";
  inputs."primme-v0_0_0".ref = "flake-pinning";
  inputs."primme-v0_0_0".dir = "nimpkgs/p/primme/v0_0_0";

    inputs."primme-v0_1_0".type = "github";
  inputs."primme-v0_1_0".owner = "riinr";
  inputs."primme-v0_1_0".repo = "flake-nimble";
  inputs."primme-v0_1_0".ref = "flake-pinning";
  inputs."primme-v0_1_0".dir = "nimpkgs/p/primme/v0_1_0";

    inputs."primme-v0_1_1".type = "github";
  inputs."primme-v0_1_1".owner = "riinr";
  inputs."primme-v0_1_1".repo = "flake-nimble";
  inputs."primme-v0_1_1".ref = "flake-pinning";
  inputs."primme-v0_1_1".dir = "nimpkgs/p/primme/v0_1_1";

    inputs."primme-v2_0_0".type = "github";
  inputs."primme-v2_0_0".owner = "riinr";
  inputs."primme-v2_0_0".repo = "flake-nimble";
  inputs."primme-v2_0_0".ref = "flake-pinning";
  inputs."primme-v2_0_0".dir = "nimpkgs/p/primme/v2_0_0";

    inputs."primme-v2_1_0".type = "github";
  inputs."primme-v2_1_0".owner = "riinr";
  inputs."primme-v2_1_0".repo = "flake-nimble";
  inputs."primme-v2_1_0".ref = "flake-pinning";
  inputs."primme-v2_1_0".dir = "nimpkgs/p/primme/v2_1_0";

    inputs."primme-v2_1_1".type = "github";
  inputs."primme-v2_1_1".owner = "riinr";
  inputs."primme-v2_1_1".repo = "flake-nimble";
  inputs."primme-v2_1_1".ref = "flake-pinning";
  inputs."primme-v2_1_1".dir = "nimpkgs/p/primme/v2_1_1";

    inputs."primme-v3_0_0".type = "github";
  inputs."primme-v3_0_0".owner = "riinr";
  inputs."primme-v3_0_0".repo = "flake-nimble";
  inputs."primme-v3_0_0".ref = "flake-pinning";
  inputs."primme-v3_0_0".dir = "nimpkgs/p/primme/v3_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}