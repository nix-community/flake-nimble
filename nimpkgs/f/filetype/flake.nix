{
  description = ''Small and dependency free Nim package to infer file and MIME type checking the magic numbers signature.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."filetype-main".type = "github";
  inputs."filetype-main".owner = "riinr";
  inputs."filetype-main".repo = "flake-nimble";
  inputs."filetype-main".ref = "flake-pinning";
  inputs."filetype-main".dir = "nimpkgs/f/filetype/main";

    inputs."filetype-v0_1_0".type = "github";
  inputs."filetype-v0_1_0".owner = "riinr";
  inputs."filetype-v0_1_0".repo = "flake-nimble";
  inputs."filetype-v0_1_0".ref = "flake-pinning";
  inputs."filetype-v0_1_0".dir = "nimpkgs/f/filetype/v0_1_0";

    inputs."filetype-v0_2_0".type = "github";
  inputs."filetype-v0_2_0".owner = "riinr";
  inputs."filetype-v0_2_0".repo = "flake-nimble";
  inputs."filetype-v0_2_0".ref = "flake-pinning";
  inputs."filetype-v0_2_0".dir = "nimpkgs/f/filetype/v0_2_0";

    inputs."filetype-v0_3_0".type = "github";
  inputs."filetype-v0_3_0".owner = "riinr";
  inputs."filetype-v0_3_0".repo = "flake-nimble";
  inputs."filetype-v0_3_0".ref = "flake-pinning";
  inputs."filetype-v0_3_0".dir = "nimpkgs/f/filetype/v0_3_0";

    inputs."filetype-v0_4_0".type = "github";
  inputs."filetype-v0_4_0".owner = "riinr";
  inputs."filetype-v0_4_0".repo = "flake-nimble";
  inputs."filetype-v0_4_0".ref = "flake-pinning";
  inputs."filetype-v0_4_0".dir = "nimpkgs/f/filetype/v0_4_0";

    inputs."filetype-v0_5_0".type = "github";
  inputs."filetype-v0_5_0".owner = "riinr";
  inputs."filetype-v0_5_0".repo = "flake-nimble";
  inputs."filetype-v0_5_0".ref = "flake-pinning";
  inputs."filetype-v0_5_0".dir = "nimpkgs/f/filetype/v0_5_0";

    inputs."filetype-v0_5_1".type = "github";
  inputs."filetype-v0_5_1".owner = "riinr";
  inputs."filetype-v0_5_1".repo = "flake-nimble";
  inputs."filetype-v0_5_1".ref = "flake-pinning";
  inputs."filetype-v0_5_1".dir = "nimpkgs/f/filetype/v0_5_1";

    inputs."filetype-v0_6_0".type = "github";
  inputs."filetype-v0_6_0".owner = "riinr";
  inputs."filetype-v0_6_0".repo = "flake-nimble";
  inputs."filetype-v0_6_0".ref = "flake-pinning";
  inputs."filetype-v0_6_0".dir = "nimpkgs/f/filetype/v0_6_0";

    inputs."filetype-v0_7_0".type = "github";
  inputs."filetype-v0_7_0".owner = "riinr";
  inputs."filetype-v0_7_0".repo = "flake-nimble";
  inputs."filetype-v0_7_0".ref = "flake-pinning";
  inputs."filetype-v0_7_0".dir = "nimpkgs/f/filetype/v0_7_0";

    inputs."filetype-v0_7_1".type = "github";
  inputs."filetype-v0_7_1".owner = "riinr";
  inputs."filetype-v0_7_1".repo = "flake-nimble";
  inputs."filetype-v0_7_1".ref = "flake-pinning";
  inputs."filetype-v0_7_1".dir = "nimpkgs/f/filetype/v0_7_1";

    inputs."filetype-v0_8_0".type = "github";
  inputs."filetype-v0_8_0".owner = "riinr";
  inputs."filetype-v0_8_0".repo = "flake-nimble";
  inputs."filetype-v0_8_0".ref = "flake-pinning";
  inputs."filetype-v0_8_0".dir = "nimpkgs/f/filetype/v0_8_0";

    inputs."filetype-v0_8_1".type = "github";
  inputs."filetype-v0_8_1".owner = "riinr";
  inputs."filetype-v0_8_1".repo = "flake-nimble";
  inputs."filetype-v0_8_1".ref = "flake-pinning";
  inputs."filetype-v0_8_1".dir = "nimpkgs/f/filetype/v0_8_1";

    inputs."filetype-v0_9_0".type = "github";
  inputs."filetype-v0_9_0".owner = "riinr";
  inputs."filetype-v0_9_0".repo = "flake-nimble";
  inputs."filetype-v0_9_0".ref = "flake-pinning";
  inputs."filetype-v0_9_0".dir = "nimpkgs/f/filetype/v0_9_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}