{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."cbor-master".type = "github";
  inputs."cbor-master".owner = "riinr";
  inputs."cbor-master".repo = "flake-nimble";
  inputs."cbor-master".ref = "flake-pinning";
  inputs."cbor-master".dir = "nimpkgs/c/cbor/master";

    inputs."cbor-staging".type = "github";
  inputs."cbor-staging".owner = "riinr";
  inputs."cbor-staging".repo = "flake-nimble";
  inputs."cbor-staging".ref = "flake-pinning";
  inputs."cbor-staging".dir = "nimpkgs/c/cbor/staging";

    inputs."cbor-0_5_0".type = "github";
  inputs."cbor-0_5_0".owner = "riinr";
  inputs."cbor-0_5_0".repo = "flake-nimble";
  inputs."cbor-0_5_0".ref = "flake-pinning";
  inputs."cbor-0_5_0".dir = "nimpkgs/c/cbor/0_5_0";

    inputs."cbor-v0_1_0".type = "github";
  inputs."cbor-v0_1_0".owner = "riinr";
  inputs."cbor-v0_1_0".repo = "flake-nimble";
  inputs."cbor-v0_1_0".ref = "flake-pinning";
  inputs."cbor-v0_1_0".dir = "nimpkgs/c/cbor/v0_1_0";

    inputs."cbor-v0_2_0".type = "github";
  inputs."cbor-v0_2_0".owner = "riinr";
  inputs."cbor-v0_2_0".repo = "flake-nimble";
  inputs."cbor-v0_2_0".ref = "flake-pinning";
  inputs."cbor-v0_2_0".dir = "nimpkgs/c/cbor/v0_2_0";

    inputs."cbor-v0_3_0".type = "github";
  inputs."cbor-v0_3_0".owner = "riinr";
  inputs."cbor-v0_3_0".repo = "flake-nimble";
  inputs."cbor-v0_3_0".ref = "flake-pinning";
  inputs."cbor-v0_3_0".dir = "nimpkgs/c/cbor/v0_3_0";

    inputs."cbor-v0_4_0".type = "github";
  inputs."cbor-v0_4_0".owner = "riinr";
  inputs."cbor-v0_4_0".repo = "flake-nimble";
  inputs."cbor-v0_4_0".ref = "flake-pinning";
  inputs."cbor-v0_4_0".dir = "nimpkgs/c/cbor/v0_4_0";

    inputs."cbor-v0_4_1".type = "github";
  inputs."cbor-v0_4_1".owner = "riinr";
  inputs."cbor-v0_4_1".repo = "flake-nimble";
  inputs."cbor-v0_4_1".ref = "flake-pinning";
  inputs."cbor-v0_4_1".dir = "nimpkgs/c/cbor/v0_4_1";

    inputs."cbor-v0_5_1".type = "github";
  inputs."cbor-v0_5_1".owner = "riinr";
  inputs."cbor-v0_5_1".repo = "flake-nimble";
  inputs."cbor-v0_5_1".ref = "flake-pinning";
  inputs."cbor-v0_5_1".dir = "nimpkgs/c/cbor/v0_5_1";

    inputs."cbor-v0_5_2".type = "github";
  inputs."cbor-v0_5_2".owner = "riinr";
  inputs."cbor-v0_5_2".repo = "flake-nimble";
  inputs."cbor-v0_5_2".ref = "flake-pinning";
  inputs."cbor-v0_5_2".dir = "nimpkgs/c/cbor/v0_5_2";

    inputs."cbor-v0_6_0".type = "github";
  inputs."cbor-v0_6_0".owner = "riinr";
  inputs."cbor-v0_6_0".repo = "flake-nimble";
  inputs."cbor-v0_6_0".ref = "flake-pinning";
  inputs."cbor-v0_6_0".dir = "nimpkgs/c/cbor/v0_6_0";

    inputs."cbor-v0_7_0".type = "github";
  inputs."cbor-v0_7_0".owner = "riinr";
  inputs."cbor-v0_7_0".repo = "flake-nimble";
  inputs."cbor-v0_7_0".ref = "flake-pinning";
  inputs."cbor-v0_7_0".dir = "nimpkgs/c/cbor/v0_7_0";

    inputs."cbor-v0_8_0".type = "github";
  inputs."cbor-v0_8_0".owner = "riinr";
  inputs."cbor-v0_8_0".repo = "flake-nimble";
  inputs."cbor-v0_8_0".ref = "flake-pinning";
  inputs."cbor-v0_8_0".dir = "nimpkgs/c/cbor/v0_8_0";

    inputs."cbor-v0_8_1".type = "github";
  inputs."cbor-v0_8_1".owner = "riinr";
  inputs."cbor-v0_8_1".repo = "flake-nimble";
  inputs."cbor-v0_8_1".ref = "flake-pinning";
  inputs."cbor-v0_8_1".dir = "nimpkgs/c/cbor/v0_8_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}