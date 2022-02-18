{
  description = ''Shamir secret sharing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."sss-master".type = "github";
  inputs."sss-master".owner = "riinr";
  inputs."sss-master".repo = "flake-nimble";
  inputs."sss-master".ref = "flake-pinning";
  inputs."sss-master".dir = "nimpkgs/s/sss/master";

    inputs."sss-0_3_0".type = "github";
  inputs."sss-0_3_0".owner = "riinr";
  inputs."sss-0_3_0".repo = "flake-nimble";
  inputs."sss-0_3_0".ref = "flake-pinning";
  inputs."sss-0_3_0".dir = "nimpkgs/s/sss/0_3_0";

    inputs."sss-0_3_1".type = "github";
  inputs."sss-0_3_1".owner = "riinr";
  inputs."sss-0_3_1".repo = "flake-nimble";
  inputs."sss-0_3_1".ref = "flake-pinning";
  inputs."sss-0_3_1".dir = "nimpkgs/s/sss/0_3_1";

    inputs."sss-0_3_2".type = "github";
  inputs."sss-0_3_2".owner = "riinr";
  inputs."sss-0_3_2".repo = "flake-nimble";
  inputs."sss-0_3_2".ref = "flake-pinning";
  inputs."sss-0_3_2".dir = "nimpkgs/s/sss/0_3_2";

    inputs."sss-v0_1_0".type = "github";
  inputs."sss-v0_1_0".owner = "riinr";
  inputs."sss-v0_1_0".repo = "flake-nimble";
  inputs."sss-v0_1_0".ref = "flake-pinning";
  inputs."sss-v0_1_0".dir = "nimpkgs/s/sss/v0_1_0";

    inputs."sss-v0_1_1".type = "github";
  inputs."sss-v0_1_1".owner = "riinr";
  inputs."sss-v0_1_1".repo = "flake-nimble";
  inputs."sss-v0_1_1".ref = "flake-pinning";
  inputs."sss-v0_1_1".dir = "nimpkgs/s/sss/v0_1_1";

    inputs."sss-v0_2_0".type = "github";
  inputs."sss-v0_2_0".owner = "riinr";
  inputs."sss-v0_2_0".repo = "flake-nimble";
  inputs."sss-v0_2_0".ref = "flake-pinning";
  inputs."sss-v0_2_0".dir = "nimpkgs/s/sss/v0_2_0";

    inputs."sss-v0_2_1".type = "github";
  inputs."sss-v0_2_1".owner = "riinr";
  inputs."sss-v0_2_1".repo = "flake-nimble";
  inputs."sss-v0_2_1".ref = "flake-pinning";
  inputs."sss-v0_2_1".dir = "nimpkgs/s/sss/v0_2_1";

    inputs."sss-v0_2_2".type = "github";
  inputs."sss-v0_2_2".owner = "riinr";
  inputs."sss-v0_2_2".repo = "flake-nimble";
  inputs."sss-v0_2_2".ref = "flake-pinning";
  inputs."sss-v0_2_2".dir = "nimpkgs/s/sss/v0_2_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}