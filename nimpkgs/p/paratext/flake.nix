{
  description = ''A library for rendering text with paranim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."paratext-master".type = "github";
  inputs."paratext-master".owner = "riinr";
  inputs."paratext-master".repo = "flake-nimble";
  inputs."paratext-master".ref = "flake-pinning";
  inputs."paratext-master".dir = "nimpkgs/p/paratext/master";

    inputs."paratext-0_1_0".type = "github";
  inputs."paratext-0_1_0".owner = "riinr";
  inputs."paratext-0_1_0".repo = "flake-nimble";
  inputs."paratext-0_1_0".ref = "flake-pinning";
  inputs."paratext-0_1_0".dir = "nimpkgs/p/paratext/0_1_0";

    inputs."paratext-0_10_0".type = "github";
  inputs."paratext-0_10_0".owner = "riinr";
  inputs."paratext-0_10_0".repo = "flake-nimble";
  inputs."paratext-0_10_0".ref = "flake-pinning";
  inputs."paratext-0_10_0".dir = "nimpkgs/p/paratext/0_10_0";

    inputs."paratext-0_11_0".type = "github";
  inputs."paratext-0_11_0".owner = "riinr";
  inputs."paratext-0_11_0".repo = "flake-nimble";
  inputs."paratext-0_11_0".ref = "flake-pinning";
  inputs."paratext-0_11_0".dir = "nimpkgs/p/paratext/0_11_0";

    inputs."paratext-0_12_0".type = "github";
  inputs."paratext-0_12_0".owner = "riinr";
  inputs."paratext-0_12_0".repo = "flake-nimble";
  inputs."paratext-0_12_0".ref = "flake-pinning";
  inputs."paratext-0_12_0".dir = "nimpkgs/p/paratext/0_12_0";

    inputs."paratext-0_2_0".type = "github";
  inputs."paratext-0_2_0".owner = "riinr";
  inputs."paratext-0_2_0".repo = "flake-nimble";
  inputs."paratext-0_2_0".ref = "flake-pinning";
  inputs."paratext-0_2_0".dir = "nimpkgs/p/paratext/0_2_0";

    inputs."paratext-0_3_0".type = "github";
  inputs."paratext-0_3_0".owner = "riinr";
  inputs."paratext-0_3_0".repo = "flake-nimble";
  inputs."paratext-0_3_0".ref = "flake-pinning";
  inputs."paratext-0_3_0".dir = "nimpkgs/p/paratext/0_3_0";

    inputs."paratext-0_4_0".type = "github";
  inputs."paratext-0_4_0".owner = "riinr";
  inputs."paratext-0_4_0".repo = "flake-nimble";
  inputs."paratext-0_4_0".ref = "flake-pinning";
  inputs."paratext-0_4_0".dir = "nimpkgs/p/paratext/0_4_0";

    inputs."paratext-0_5_0".type = "github";
  inputs."paratext-0_5_0".owner = "riinr";
  inputs."paratext-0_5_0".repo = "flake-nimble";
  inputs."paratext-0_5_0".ref = "flake-pinning";
  inputs."paratext-0_5_0".dir = "nimpkgs/p/paratext/0_5_0";

    inputs."paratext-0_6_0".type = "github";
  inputs."paratext-0_6_0".owner = "riinr";
  inputs."paratext-0_6_0".repo = "flake-nimble";
  inputs."paratext-0_6_0".ref = "flake-pinning";
  inputs."paratext-0_6_0".dir = "nimpkgs/p/paratext/0_6_0";

    inputs."paratext-0_7_0".type = "github";
  inputs."paratext-0_7_0".owner = "riinr";
  inputs."paratext-0_7_0".repo = "flake-nimble";
  inputs."paratext-0_7_0".ref = "flake-pinning";
  inputs."paratext-0_7_0".dir = "nimpkgs/p/paratext/0_7_0";

    inputs."paratext-0_8_0".type = "github";
  inputs."paratext-0_8_0".owner = "riinr";
  inputs."paratext-0_8_0".repo = "flake-nimble";
  inputs."paratext-0_8_0".ref = "flake-pinning";
  inputs."paratext-0_8_0".dir = "nimpkgs/p/paratext/0_8_0";

    inputs."paratext-0_9_0".type = "github";
  inputs."paratext-0_9_0".owner = "riinr";
  inputs."paratext-0_9_0".repo = "flake-nimble";
  inputs."paratext-0_9_0".ref = "flake-pinning";
  inputs."paratext-0_9_0".dir = "nimpkgs/p/paratext/0_9_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}