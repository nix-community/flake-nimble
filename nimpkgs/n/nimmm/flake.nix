{
  description = ''A terminal file manager written in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimmm-master".type = "github";
  inputs."nimmm-master".owner = "riinr";
  inputs."nimmm-master".repo = "flake-nimble";
  inputs."nimmm-master".ref = "flake-pinning";
  inputs."nimmm-master".dir = "nimpkgs/n/nimmm/master";

    inputs."nimmm-v0_0_1".type = "github";
  inputs."nimmm-v0_0_1".owner = "riinr";
  inputs."nimmm-v0_0_1".repo = "flake-nimble";
  inputs."nimmm-v0_0_1".ref = "flake-pinning";
  inputs."nimmm-v0_0_1".dir = "nimpkgs/n/nimmm/v0_0_1";

    inputs."nimmm-v0_1_0".type = "github";
  inputs."nimmm-v0_1_0".owner = "riinr";
  inputs."nimmm-v0_1_0".repo = "flake-nimble";
  inputs."nimmm-v0_1_0".ref = "flake-pinning";
  inputs."nimmm-v0_1_0".dir = "nimpkgs/n/nimmm/v0_1_0";

    inputs."nimmm-v0_1_1".type = "github";
  inputs."nimmm-v0_1_1".owner = "riinr";
  inputs."nimmm-v0_1_1".repo = "flake-nimble";
  inputs."nimmm-v0_1_1".ref = "flake-pinning";
  inputs."nimmm-v0_1_1".dir = "nimpkgs/n/nimmm/v0_1_1";

    inputs."nimmm-v0_1_2".type = "github";
  inputs."nimmm-v0_1_2".owner = "riinr";
  inputs."nimmm-v0_1_2".repo = "flake-nimble";
  inputs."nimmm-v0_1_2".ref = "flake-pinning";
  inputs."nimmm-v0_1_2".dir = "nimpkgs/n/nimmm/v0_1_2";

    inputs."nimmm-v0_2_0".type = "github";
  inputs."nimmm-v0_2_0".owner = "riinr";
  inputs."nimmm-v0_2_0".repo = "flake-nimble";
  inputs."nimmm-v0_2_0".ref = "flake-pinning";
  inputs."nimmm-v0_2_0".dir = "nimpkgs/n/nimmm/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}