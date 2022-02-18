{
  description = ''A Nim library for biological sequence data.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."bio_seq-main".type = "github";
  inputs."bio_seq-main".owner = "riinr";
  inputs."bio_seq-main".repo = "flake-nimble";
  inputs."bio_seq-main".ref = "flake-pinning";
  inputs."bio_seq-main".dir = "nimpkgs/b/bio_seq/main";

    inputs."bio_seq-v_0_0_2".type = "github";
  inputs."bio_seq-v_0_0_2".owner = "riinr";
  inputs."bio_seq-v_0_0_2".repo = "flake-nimble";
  inputs."bio_seq-v_0_0_2".ref = "flake-pinning";
  inputs."bio_seq-v_0_0_2".dir = "nimpkgs/b/bio_seq/v_0_0_2";

    inputs."bio_seq-v_0_0_5".type = "github";
  inputs."bio_seq-v_0_0_5".owner = "riinr";
  inputs."bio_seq-v_0_0_5".repo = "flake-nimble";
  inputs."bio_seq-v_0_0_5".ref = "flake-pinning";
  inputs."bio_seq-v_0_0_5".dir = "nimpkgs/b/bio_seq/v_0_0_5";

    inputs."bio_seq-v_0_0_7".type = "github";
  inputs."bio_seq-v_0_0_7".owner = "riinr";
  inputs."bio_seq-v_0_0_7".repo = "flake-nimble";
  inputs."bio_seq-v_0_0_7".ref = "flake-pinning";
  inputs."bio_seq-v_0_0_7".dir = "nimpkgs/b/bio_seq/v_0_0_7";

    inputs."bio_seq-v0_0_1".type = "github";
  inputs."bio_seq-v0_0_1".owner = "riinr";
  inputs."bio_seq-v0_0_1".repo = "flake-nimble";
  inputs."bio_seq-v0_0_1".ref = "flake-pinning";
  inputs."bio_seq-v0_0_1".dir = "nimpkgs/b/bio_seq/v0_0_1";

    inputs."bio_seq-v0_0_3".type = "github";
  inputs."bio_seq-v0_0_3".owner = "riinr";
  inputs."bio_seq-v0_0_3".repo = "flake-nimble";
  inputs."bio_seq-v0_0_3".ref = "flake-pinning";
  inputs."bio_seq-v0_0_3".dir = "nimpkgs/b/bio_seq/v0_0_3";

    inputs."bio_seq-v0_0_4".type = "github";
  inputs."bio_seq-v0_0_4".owner = "riinr";
  inputs."bio_seq-v0_0_4".repo = "flake-nimble";
  inputs."bio_seq-v0_0_4".ref = "flake-pinning";
  inputs."bio_seq-v0_0_4".dir = "nimpkgs/b/bio_seq/v0_0_4";

    inputs."bio_seq-v0_0_8".type = "github";
  inputs."bio_seq-v0_0_8".owner = "riinr";
  inputs."bio_seq-v0_0_8".repo = "flake-nimble";
  inputs."bio_seq-v0_0_8".ref = "flake-pinning";
  inputs."bio_seq-v0_0_8".dir = "nimpkgs/b/bio_seq/v0_0_8";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}