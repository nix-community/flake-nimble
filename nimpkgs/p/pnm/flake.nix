{
  description = ''pnm is library for PNM (Portable AnyMap).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."pnm-develop".type = "github";
  inputs."pnm-develop".owner = "riinr";
  inputs."pnm-develop".repo = "flake-nimble";
  inputs."pnm-develop".ref = "flake-pinning";
  inputs."pnm-develop".dir = "nimpkgs/p/pnm/develop";

    inputs."pnm-master".type = "github";
  inputs."pnm-master".owner = "riinr";
  inputs."pnm-master".repo = "flake-nimble";
  inputs."pnm-master".ref = "flake-pinning";
  inputs."pnm-master".dir = "nimpkgs/p/pnm/master";

    inputs."pnm-v2_0_0".type = "github";
  inputs."pnm-v2_0_0".owner = "riinr";
  inputs."pnm-v2_0_0".repo = "flake-nimble";
  inputs."pnm-v2_0_0".ref = "flake-pinning";
  inputs."pnm-v2_0_0".dir = "nimpkgs/p/pnm/v2_0_0";

    inputs."pnm-v2_0_1".type = "github";
  inputs."pnm-v2_0_1".owner = "riinr";
  inputs."pnm-v2_0_1".repo = "flake-nimble";
  inputs."pnm-v2_0_1".ref = "flake-pinning";
  inputs."pnm-v2_0_1".dir = "nimpkgs/p/pnm/v2_0_1";

    inputs."pnm-v2_1_0".type = "github";
  inputs."pnm-v2_1_0".owner = "riinr";
  inputs."pnm-v2_1_0".repo = "flake-nimble";
  inputs."pnm-v2_1_0".ref = "flake-pinning";
  inputs."pnm-v2_1_0".dir = "nimpkgs/p/pnm/v2_1_0";

    inputs."pnm-v2_1_1".type = "github";
  inputs."pnm-v2_1_1".owner = "riinr";
  inputs."pnm-v2_1_1".repo = "flake-nimble";
  inputs."pnm-v2_1_1".ref = "flake-pinning";
  inputs."pnm-v2_1_1".dir = "nimpkgs/p/pnm/v2_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}