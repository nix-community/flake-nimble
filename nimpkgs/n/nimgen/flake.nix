{
  description = ''C2nim helper to simplify and automate wrapping C libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimgen-master".type = "github";
  inputs."nimgen-master".owner = "riinr";
  inputs."nimgen-master".repo = "flake-nimble";
  inputs."nimgen-master".ref = "flake-pinning";
  inputs."nimgen-master".dir = "nimpkgs/n/nimgen/master";

    inputs."nimgen-v0_1_0".type = "github";
  inputs."nimgen-v0_1_0".owner = "riinr";
  inputs."nimgen-v0_1_0".repo = "flake-nimble";
  inputs."nimgen-v0_1_0".ref = "flake-pinning";
  inputs."nimgen-v0_1_0".dir = "nimpkgs/n/nimgen/v0_1_0";

    inputs."nimgen-v0_1_1".type = "github";
  inputs."nimgen-v0_1_1".owner = "riinr";
  inputs."nimgen-v0_1_1".repo = "flake-nimble";
  inputs."nimgen-v0_1_1".ref = "flake-pinning";
  inputs."nimgen-v0_1_1".dir = "nimpkgs/n/nimgen/v0_1_1";

    inputs."nimgen-v0_1_2".type = "github";
  inputs."nimgen-v0_1_2".owner = "riinr";
  inputs."nimgen-v0_1_2".repo = "flake-nimble";
  inputs."nimgen-v0_1_2".ref = "flake-pinning";
  inputs."nimgen-v0_1_2".dir = "nimpkgs/n/nimgen/v0_1_2";

    inputs."nimgen-v0_1_3".type = "github";
  inputs."nimgen-v0_1_3".owner = "riinr";
  inputs."nimgen-v0_1_3".repo = "flake-nimble";
  inputs."nimgen-v0_1_3".ref = "flake-pinning";
  inputs."nimgen-v0_1_3".dir = "nimpkgs/n/nimgen/v0_1_3";

    inputs."nimgen-v0_1_4".type = "github";
  inputs."nimgen-v0_1_4".owner = "riinr";
  inputs."nimgen-v0_1_4".repo = "flake-nimble";
  inputs."nimgen-v0_1_4".ref = "flake-pinning";
  inputs."nimgen-v0_1_4".dir = "nimpkgs/n/nimgen/v0_1_4";

    inputs."nimgen-v0_1_5".type = "github";
  inputs."nimgen-v0_1_5".owner = "riinr";
  inputs."nimgen-v0_1_5".repo = "flake-nimble";
  inputs."nimgen-v0_1_5".ref = "flake-pinning";
  inputs."nimgen-v0_1_5".dir = "nimpkgs/n/nimgen/v0_1_5";

    inputs."nimgen-v0_2_0".type = "github";
  inputs."nimgen-v0_2_0".owner = "riinr";
  inputs."nimgen-v0_2_0".repo = "flake-nimble";
  inputs."nimgen-v0_2_0".ref = "flake-pinning";
  inputs."nimgen-v0_2_0".dir = "nimpkgs/n/nimgen/v0_2_0";

    inputs."nimgen-v0_2_2".type = "github";
  inputs."nimgen-v0_2_2".owner = "riinr";
  inputs."nimgen-v0_2_2".repo = "flake-nimble";
  inputs."nimgen-v0_2_2".ref = "flake-pinning";
  inputs."nimgen-v0_2_2".dir = "nimpkgs/n/nimgen/v0_2_2";

    inputs."nimgen-v0_2_3".type = "github";
  inputs."nimgen-v0_2_3".owner = "riinr";
  inputs."nimgen-v0_2_3".repo = "flake-nimble";
  inputs."nimgen-v0_2_3".ref = "flake-pinning";
  inputs."nimgen-v0_2_3".dir = "nimpkgs/n/nimgen/v0_2_3";

    inputs."nimgen-v0_3_0".type = "github";
  inputs."nimgen-v0_3_0".owner = "riinr";
  inputs."nimgen-v0_3_0".repo = "flake-nimble";
  inputs."nimgen-v0_3_0".ref = "flake-pinning";
  inputs."nimgen-v0_3_0".dir = "nimpkgs/n/nimgen/v0_3_0";

    inputs."nimgen-v0_3_1".type = "github";
  inputs."nimgen-v0_3_1".owner = "riinr";
  inputs."nimgen-v0_3_1".repo = "flake-nimble";
  inputs."nimgen-v0_3_1".ref = "flake-pinning";
  inputs."nimgen-v0_3_1".dir = "nimpkgs/n/nimgen/v0_3_1";

    inputs."nimgen-v0_4_0".type = "github";
  inputs."nimgen-v0_4_0".owner = "riinr";
  inputs."nimgen-v0_4_0".repo = "flake-nimble";
  inputs."nimgen-v0_4_0".ref = "flake-pinning";
  inputs."nimgen-v0_4_0".dir = "nimpkgs/n/nimgen/v0_4_0";

    inputs."nimgen-v0_5_0".type = "github";
  inputs."nimgen-v0_5_0".owner = "riinr";
  inputs."nimgen-v0_5_0".repo = "flake-nimble";
  inputs."nimgen-v0_5_0".ref = "flake-pinning";
  inputs."nimgen-v0_5_0".dir = "nimpkgs/n/nimgen/v0_5_0";

    inputs."nimgen-v0_5_1".type = "github";
  inputs."nimgen-v0_5_1".owner = "riinr";
  inputs."nimgen-v0_5_1".repo = "flake-nimble";
  inputs."nimgen-v0_5_1".ref = "flake-pinning";
  inputs."nimgen-v0_5_1".dir = "nimpkgs/n/nimgen/v0_5_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}