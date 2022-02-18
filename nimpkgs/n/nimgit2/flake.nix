{
  description = ''libgit2 wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimgit2-master".type = "github";
  inputs."nimgit2-master".owner = "riinr";
  inputs."nimgit2-master".repo = "flake-nimble";
  inputs."nimgit2-master".ref = "flake-pinning";
  inputs."nimgit2-master".dir = "nimpkgs/n/nimgit2/master";

    inputs."nimgit2-v0_1_0".type = "github";
  inputs."nimgit2-v0_1_0".owner = "riinr";
  inputs."nimgit2-v0_1_0".repo = "flake-nimble";
  inputs."nimgit2-v0_1_0".ref = "flake-pinning";
  inputs."nimgit2-v0_1_0".dir = "nimpkgs/n/nimgit2/v0_1_0";

    inputs."nimgit2-v0_1_1".type = "github";
  inputs."nimgit2-v0_1_1".owner = "riinr";
  inputs."nimgit2-v0_1_1".repo = "flake-nimble";
  inputs."nimgit2-v0_1_1".ref = "flake-pinning";
  inputs."nimgit2-v0_1_1".dir = "nimpkgs/n/nimgit2/v0_1_1";

    inputs."nimgit2-v0_1_2".type = "github";
  inputs."nimgit2-v0_1_2".owner = "riinr";
  inputs."nimgit2-v0_1_2".repo = "flake-nimble";
  inputs."nimgit2-v0_1_2".ref = "flake-pinning";
  inputs."nimgit2-v0_1_2".dir = "nimpkgs/n/nimgit2/v0_1_2";

    inputs."nimgit2-v0_2_0".type = "github";
  inputs."nimgit2-v0_2_0".owner = "riinr";
  inputs."nimgit2-v0_2_0".repo = "flake-nimble";
  inputs."nimgit2-v0_2_0".ref = "flake-pinning";
  inputs."nimgit2-v0_2_0".dir = "nimpkgs/n/nimgit2/v0_2_0";

    inputs."nimgit2-v0_3_0".type = "github";
  inputs."nimgit2-v0_3_0".owner = "riinr";
  inputs."nimgit2-v0_3_0".repo = "flake-nimble";
  inputs."nimgit2-v0_3_0".ref = "flake-pinning";
  inputs."nimgit2-v0_3_0".dir = "nimpkgs/n/nimgit2/v0_3_0";

    inputs."nimgit2-v0_3_1".type = "github";
  inputs."nimgit2-v0_3_1".owner = "riinr";
  inputs."nimgit2-v0_3_1".repo = "flake-nimble";
  inputs."nimgit2-v0_3_1".ref = "flake-pinning";
  inputs."nimgit2-v0_3_1".dir = "nimpkgs/n/nimgit2/v0_3_1";

    inputs."nimgit2-v0_3_2".type = "github";
  inputs."nimgit2-v0_3_2".owner = "riinr";
  inputs."nimgit2-v0_3_2".repo = "flake-nimble";
  inputs."nimgit2-v0_3_2".ref = "flake-pinning";
  inputs."nimgit2-v0_3_2".dir = "nimpkgs/n/nimgit2/v0_3_2";

    inputs."nimgit2-v0_3_4".type = "github";
  inputs."nimgit2-v0_3_4".owner = "riinr";
  inputs."nimgit2-v0_3_4".repo = "flake-nimble";
  inputs."nimgit2-v0_3_4".ref = "flake-pinning";
  inputs."nimgit2-v0_3_4".dir = "nimpkgs/n/nimgit2/v0_3_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}