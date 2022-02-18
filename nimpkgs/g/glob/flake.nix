{
  description = ''Pure library for matching file paths against Unix style glob patterns.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."glob-master".type = "github";
  inputs."glob-master".owner = "riinr";
  inputs."glob-master".repo = "flake-nimble";
  inputs."glob-master".ref = "flake-pinning";
  inputs."glob-master".dir = "nimpkgs/g/glob/master";

    inputs."glob-v0_1_0".type = "github";
  inputs."glob-v0_1_0".owner = "riinr";
  inputs."glob-v0_1_0".repo = "flake-nimble";
  inputs."glob-v0_1_0".ref = "flake-pinning";
  inputs."glob-v0_1_0".dir = "nimpkgs/g/glob/v0_1_0";

    inputs."glob-v0_10_0".type = "github";
  inputs."glob-v0_10_0".owner = "riinr";
  inputs."glob-v0_10_0".repo = "flake-nimble";
  inputs."glob-v0_10_0".ref = "flake-pinning";
  inputs."glob-v0_10_0".dir = "nimpkgs/g/glob/v0_10_0";

    inputs."glob-v0_11_0".type = "github";
  inputs."glob-v0_11_0".owner = "riinr";
  inputs."glob-v0_11_0".repo = "flake-nimble";
  inputs."glob-v0_11_0".ref = "flake-pinning";
  inputs."glob-v0_11_0".dir = "nimpkgs/g/glob/v0_11_0";

    inputs."glob-v0_11_1".type = "github";
  inputs."glob-v0_11_1".owner = "riinr";
  inputs."glob-v0_11_1".repo = "flake-nimble";
  inputs."glob-v0_11_1".ref = "flake-pinning";
  inputs."glob-v0_11_1".dir = "nimpkgs/g/glob/v0_11_1";

    inputs."glob-v0_2_0".type = "github";
  inputs."glob-v0_2_0".owner = "riinr";
  inputs."glob-v0_2_0".repo = "flake-nimble";
  inputs."glob-v0_2_0".ref = "flake-pinning";
  inputs."glob-v0_2_0".dir = "nimpkgs/g/glob/v0_2_0";

    inputs."glob-v0_3_0".type = "github";
  inputs."glob-v0_3_0".owner = "riinr";
  inputs."glob-v0_3_0".repo = "flake-nimble";
  inputs."glob-v0_3_0".ref = "flake-pinning";
  inputs."glob-v0_3_0".dir = "nimpkgs/g/glob/v0_3_0";

    inputs."glob-v0_3_1".type = "github";
  inputs."glob-v0_3_1".owner = "riinr";
  inputs."glob-v0_3_1".repo = "flake-nimble";
  inputs."glob-v0_3_1".ref = "flake-pinning";
  inputs."glob-v0_3_1".dir = "nimpkgs/g/glob/v0_3_1";

    inputs."glob-v0_4_0".type = "github";
  inputs."glob-v0_4_0".owner = "riinr";
  inputs."glob-v0_4_0".repo = "flake-nimble";
  inputs."glob-v0_4_0".ref = "flake-pinning";
  inputs."glob-v0_4_0".dir = "nimpkgs/g/glob/v0_4_0";

    inputs."glob-v0_5_0".type = "github";
  inputs."glob-v0_5_0".owner = "riinr";
  inputs."glob-v0_5_0".repo = "flake-nimble";
  inputs."glob-v0_5_0".ref = "flake-pinning";
  inputs."glob-v0_5_0".dir = "nimpkgs/g/glob/v0_5_0";

    inputs."glob-v0_6_0".type = "github";
  inputs."glob-v0_6_0".owner = "riinr";
  inputs."glob-v0_6_0".repo = "flake-nimble";
  inputs."glob-v0_6_0".ref = "flake-pinning";
  inputs."glob-v0_6_0".dir = "nimpkgs/g/glob/v0_6_0";

    inputs."glob-v0_7_0".type = "github";
  inputs."glob-v0_7_0".owner = "riinr";
  inputs."glob-v0_7_0".repo = "flake-nimble";
  inputs."glob-v0_7_0".ref = "flake-pinning";
  inputs."glob-v0_7_0".dir = "nimpkgs/g/glob/v0_7_0";

    inputs."glob-v0_8_0".type = "github";
  inputs."glob-v0_8_0".owner = "riinr";
  inputs."glob-v0_8_0".repo = "flake-nimble";
  inputs."glob-v0_8_0".ref = "flake-pinning";
  inputs."glob-v0_8_0".dir = "nimpkgs/g/glob/v0_8_0";

    inputs."glob-v0_8_1".type = "github";
  inputs."glob-v0_8_1".owner = "riinr";
  inputs."glob-v0_8_1".repo = "flake-nimble";
  inputs."glob-v0_8_1".ref = "flake-pinning";
  inputs."glob-v0_8_1".dir = "nimpkgs/g/glob/v0_8_1";

    inputs."glob-v0_9_0".type = "github";
  inputs."glob-v0_9_0".owner = "riinr";
  inputs."glob-v0_9_0".repo = "flake-nimble";
  inputs."glob-v0_9_0".ref = "flake-pinning";
  inputs."glob-v0_9_0".dir = "nimpkgs/g/glob/v0_9_0";

    inputs."glob-v0_9_0-doc".type = "github";
  inputs."glob-v0_9_0-doc".owner = "riinr";
  inputs."glob-v0_9_0-doc".repo = "flake-nimble";
  inputs."glob-v0_9_0-doc".ref = "flake-pinning";
  inputs."glob-v0_9_0-doc".dir = "nimpkgs/g/glob/v0_9_0-doc";

    inputs."glob-v0_9_1".type = "github";
  inputs."glob-v0_9_1".owner = "riinr";
  inputs."glob-v0_9_1".repo = "flake-nimble";
  inputs."glob-v0_9_1".ref = "flake-pinning";
  inputs."glob-v0_9_1".dir = "nimpkgs/g/glob/v0_9_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}