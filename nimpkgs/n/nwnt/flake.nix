{
  description = ''GFF <-> NWNT Converter (NeverWinter Nights Text)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nwnt-main".type = "github";
  inputs."nwnt-main".owner = "riinr";
  inputs."nwnt-main".repo = "flake-nimble";
  inputs."nwnt-main".ref = "flake-pinning";
  inputs."nwnt-main".dir = "nimpkgs/n/nwnt/main";

    inputs."nwnt-v1_0_0".type = "github";
  inputs."nwnt-v1_0_0".owner = "riinr";
  inputs."nwnt-v1_0_0".repo = "flake-nimble";
  inputs."nwnt-v1_0_0".ref = "flake-pinning";
  inputs."nwnt-v1_0_0".dir = "nimpkgs/n/nwnt/v1_0_0";

    inputs."nwnt-v1_1_0".type = "github";
  inputs."nwnt-v1_1_0".owner = "riinr";
  inputs."nwnt-v1_1_0".repo = "flake-nimble";
  inputs."nwnt-v1_1_0".ref = "flake-pinning";
  inputs."nwnt-v1_1_0".dir = "nimpkgs/n/nwnt/v1_1_0";

    inputs."nwnt-v1_2_0".type = "github";
  inputs."nwnt-v1_2_0".owner = "riinr";
  inputs."nwnt-v1_2_0".repo = "flake-nimble";
  inputs."nwnt-v1_2_0".ref = "flake-pinning";
  inputs."nwnt-v1_2_0".dir = "nimpkgs/n/nwnt/v1_2_0";

    inputs."nwnt-v1_2_1".type = "github";
  inputs."nwnt-v1_2_1".owner = "riinr";
  inputs."nwnt-v1_2_1".repo = "flake-nimble";
  inputs."nwnt-v1_2_1".ref = "flake-pinning";
  inputs."nwnt-v1_2_1".dir = "nimpkgs/n/nwnt/v1_2_1";

    inputs."nwnt-v1_2_2".type = "github";
  inputs."nwnt-v1_2_2".owner = "riinr";
  inputs."nwnt-v1_2_2".repo = "flake-nimble";
  inputs."nwnt-v1_2_2".ref = "flake-pinning";
  inputs."nwnt-v1_2_2".dir = "nimpkgs/n/nwnt/v1_2_2";

    inputs."nwnt-v1_3_0".type = "github";
  inputs."nwnt-v1_3_0".owner = "riinr";
  inputs."nwnt-v1_3_0".repo = "flake-nimble";
  inputs."nwnt-v1_3_0".ref = "flake-pinning";
  inputs."nwnt-v1_3_0".dir = "nimpkgs/n/nwnt/v1_3_0";

    inputs."nwnt-v1_3_1".type = "github";
  inputs."nwnt-v1_3_1".owner = "riinr";
  inputs."nwnt-v1_3_1".repo = "flake-nimble";
  inputs."nwnt-v1_3_1".ref = "flake-pinning";
  inputs."nwnt-v1_3_1".dir = "nimpkgs/n/nwnt/v1_3_1";

    inputs."nwnt-v1_3_2".type = "github";
  inputs."nwnt-v1_3_2".owner = "riinr";
  inputs."nwnt-v1_3_2".repo = "flake-nimble";
  inputs."nwnt-v1_3_2".ref = "flake-pinning";
  inputs."nwnt-v1_3_2".dir = "nimpkgs/n/nwnt/v1_3_2";

    inputs."nwnt-v1_3_3".type = "github";
  inputs."nwnt-v1_3_3".owner = "riinr";
  inputs."nwnt-v1_3_3".repo = "flake-nimble";
  inputs."nwnt-v1_3_3".ref = "flake-pinning";
  inputs."nwnt-v1_3_3".dir = "nimpkgs/n/nwnt/v1_3_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}