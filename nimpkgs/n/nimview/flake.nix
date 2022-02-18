{
  description = ''Nim / Python / C library to run webview with HTML/JS as UI'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimview-main".type = "github";
  inputs."nimview-main".owner = "riinr";
  inputs."nimview-main".repo = "flake-nimble";
  inputs."nimview-main".ref = "flake-pinning";
  inputs."nimview-main".dir = "nimpkgs/n/nimview/main";

    inputs."nimview-0_2_0".type = "github";
  inputs."nimview-0_2_0".owner = "riinr";
  inputs."nimview-0_2_0".repo = "flake-nimble";
  inputs."nimview-0_2_0".ref = "flake-pinning";
  inputs."nimview-0_2_0".dir = "nimpkgs/n/nimview/0_2_0";

    inputs."nimview-0_2_1".type = "github";
  inputs."nimview-0_2_1".owner = "riinr";
  inputs."nimview-0_2_1".repo = "flake-nimble";
  inputs."nimview-0_2_1".ref = "flake-pinning";
  inputs."nimview-0_2_1".dir = "nimpkgs/n/nimview/0_2_1";

    inputs."nimview-0_2_2".type = "github";
  inputs."nimview-0_2_2".owner = "riinr";
  inputs."nimview-0_2_2".repo = "flake-nimble";
  inputs."nimview-0_2_2".ref = "flake-pinning";
  inputs."nimview-0_2_2".dir = "nimpkgs/n/nimview/0_2_2";

    inputs."nimview-0_2_3".type = "github";
  inputs."nimview-0_2_3".owner = "riinr";
  inputs."nimview-0_2_3".repo = "flake-nimble";
  inputs."nimview-0_2_3".ref = "flake-pinning";
  inputs."nimview-0_2_3".dir = "nimpkgs/n/nimview/0_2_3";

    inputs."nimview-0_3_0".type = "github";
  inputs."nimview-0_3_0".owner = "riinr";
  inputs."nimview-0_3_0".repo = "flake-nimble";
  inputs."nimview-0_3_0".ref = "flake-pinning";
  inputs."nimview-0_3_0".dir = "nimpkgs/n/nimview/0_3_0";

    inputs."nimview-0_3_1".type = "github";
  inputs."nimview-0_3_1".owner = "riinr";
  inputs."nimview-0_3_1".repo = "flake-nimble";
  inputs."nimview-0_3_1".ref = "flake-pinning";
  inputs."nimview-0_3_1".dir = "nimpkgs/n/nimview/0_3_1";

    inputs."nimview-0_3_2".type = "github";
  inputs."nimview-0_3_2".owner = "riinr";
  inputs."nimview-0_3_2".repo = "flake-nimble";
  inputs."nimview-0_3_2".ref = "flake-pinning";
  inputs."nimview-0_3_2".dir = "nimpkgs/n/nimview/0_3_2";

    inputs."nimview-0_3_3".type = "github";
  inputs."nimview-0_3_3".owner = "riinr";
  inputs."nimview-0_3_3".repo = "flake-nimble";
  inputs."nimview-0_3_3".ref = "flake-pinning";
  inputs."nimview-0_3_3".dir = "nimpkgs/n/nimview/0_3_3";

    inputs."nimview-0_4_0".type = "github";
  inputs."nimview-0_4_0".owner = "riinr";
  inputs."nimview-0_4_0".repo = "flake-nimble";
  inputs."nimview-0_4_0".ref = "flake-pinning";
  inputs."nimview-0_4_0".dir = "nimpkgs/n/nimview/0_4_0";

    inputs."nimview-0_4_1".type = "github";
  inputs."nimview-0_4_1".owner = "riinr";
  inputs."nimview-0_4_1".repo = "flake-nimble";
  inputs."nimview-0_4_1".ref = "flake-pinning";
  inputs."nimview-0_4_1".dir = "nimpkgs/n/nimview/0_4_1";

    inputs."nimview-0_4_2".type = "github";
  inputs."nimview-0_4_2".owner = "riinr";
  inputs."nimview-0_4_2".repo = "flake-nimble";
  inputs."nimview-0_4_2".ref = "flake-pinning";
  inputs."nimview-0_4_2".dir = "nimpkgs/n/nimview/0_4_2";

    inputs."nimview-v0_1_1".type = "github";
  inputs."nimview-v0_1_1".owner = "riinr";
  inputs."nimview-v0_1_1".repo = "flake-nimble";
  inputs."nimview-v0_1_1".ref = "flake-pinning";
  inputs."nimview-v0_1_1".dir = "nimpkgs/n/nimview/v0_1_1";

    inputs."nimview-v0_1_2".type = "github";
  inputs."nimview-v0_1_2".owner = "riinr";
  inputs."nimview-v0_1_2".repo = "flake-nimble";
  inputs."nimview-v0_1_2".ref = "flake-pinning";
  inputs."nimview-v0_1_2".dir = "nimpkgs/n/nimview/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}