{
  description = ''nimib 🐳 - nim 👑 driven ⛵ publishing ✍'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimib-main".type = "github";
  inputs."nimib-main".owner = "riinr";
  inputs."nimib-main".repo = "flake-nimble";
  inputs."nimib-main".ref = "flake-pinning";
  inputs."nimib-main".dir = "nimpkgs/n/nimib/main";

    inputs."nimib-v0_1".type = "github";
  inputs."nimib-v0_1".owner = "riinr";
  inputs."nimib-v0_1".repo = "flake-nimble";
  inputs."nimib-v0_1".ref = "flake-pinning";
  inputs."nimib-v0_1".dir = "nimpkgs/n/nimib/v0_1";

    inputs."nimib-v0_1_1".type = "github";
  inputs."nimib-v0_1_1".owner = "riinr";
  inputs."nimib-v0_1_1".repo = "flake-nimble";
  inputs."nimib-v0_1_1".ref = "flake-pinning";
  inputs."nimib-v0_1_1".dir = "nimpkgs/n/nimib/v0_1_1";

    inputs."nimib-v0_1_2".type = "github";
  inputs."nimib-v0_1_2".owner = "riinr";
  inputs."nimib-v0_1_2".repo = "flake-nimble";
  inputs."nimib-v0_1_2".ref = "flake-pinning";
  inputs."nimib-v0_1_2".dir = "nimpkgs/n/nimib/v0_1_2";

    inputs."nimib-v0_1_3".type = "github";
  inputs."nimib-v0_1_3".owner = "riinr";
  inputs."nimib-v0_1_3".repo = "flake-nimble";
  inputs."nimib-v0_1_3".ref = "flake-pinning";
  inputs."nimib-v0_1_3".dir = "nimpkgs/n/nimib/v0_1_3";

    inputs."nimib-v0_1_4".type = "github";
  inputs."nimib-v0_1_4".owner = "riinr";
  inputs."nimib-v0_1_4".repo = "flake-nimble";
  inputs."nimib-v0_1_4".ref = "flake-pinning";
  inputs."nimib-v0_1_4".dir = "nimpkgs/n/nimib/v0_1_4";

    inputs."nimib-v0_1_5".type = "github";
  inputs."nimib-v0_1_5".owner = "riinr";
  inputs."nimib-v0_1_5".repo = "flake-nimble";
  inputs."nimib-v0_1_5".ref = "flake-pinning";
  inputs."nimib-v0_1_5".dir = "nimpkgs/n/nimib/v0_1_5";

    inputs."nimib-v0_1_6".type = "github";
  inputs."nimib-v0_1_6".owner = "riinr";
  inputs."nimib-v0_1_6".repo = "flake-nimble";
  inputs."nimib-v0_1_6".ref = "flake-pinning";
  inputs."nimib-v0_1_6".dir = "nimpkgs/n/nimib/v0_1_6";

    inputs."nimib-v0_2_0".type = "github";
  inputs."nimib-v0_2_0".owner = "riinr";
  inputs."nimib-v0_2_0".repo = "flake-nimble";
  inputs."nimib-v0_2_0".ref = "flake-pinning";
  inputs."nimib-v0_2_0".dir = "nimpkgs/n/nimib/v0_2_0";

    inputs."nimib-v0_2_1".type = "github";
  inputs."nimib-v0_2_1".owner = "riinr";
  inputs."nimib-v0_2_1".repo = "flake-nimble";
  inputs."nimib-v0_2_1".ref = "flake-pinning";
  inputs."nimib-v0_2_1".dir = "nimpkgs/n/nimib/v0_2_1";

    inputs."nimib-v0_2_2".type = "github";
  inputs."nimib-v0_2_2".owner = "riinr";
  inputs."nimib-v0_2_2".repo = "flake-nimble";
  inputs."nimib-v0_2_2".ref = "flake-pinning";
  inputs."nimib-v0_2_2".dir = "nimpkgs/n/nimib/v0_2_2";

    inputs."nimib-v0_2_3".type = "github";
  inputs."nimib-v0_2_3".owner = "riinr";
  inputs."nimib-v0_2_3".repo = "flake-nimble";
  inputs."nimib-v0_2_3".ref = "flake-pinning";
  inputs."nimib-v0_2_3".dir = "nimpkgs/n/nimib/v0_2_3";

    inputs."nimib-v0_2_4".type = "github";
  inputs."nimib-v0_2_4".owner = "riinr";
  inputs."nimib-v0_2_4".repo = "flake-nimble";
  inputs."nimib-v0_2_4".ref = "flake-pinning";
  inputs."nimib-v0_2_4".dir = "nimpkgs/n/nimib/v0_2_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}