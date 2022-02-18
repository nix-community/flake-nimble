{
  description = ''Temporary files and directories'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."tempfile-master".type = "github";
  inputs."tempfile-master".owner = "riinr";
  inputs."tempfile-master".repo = "flake-nimble";
  inputs."tempfile-master".ref = "flake-pinning";
  inputs."tempfile-master".dir = "nimpkgs/t/tempfile/master";

    inputs."tempfile-0_1_5".type = "github";
  inputs."tempfile-0_1_5".owner = "riinr";
  inputs."tempfile-0_1_5".repo = "flake-nimble";
  inputs."tempfile-0_1_5".ref = "flake-pinning";
  inputs."tempfile-0_1_5".dir = "nimpkgs/t/tempfile/0_1_5";

    inputs."tempfile-0_1_6".type = "github";
  inputs."tempfile-0_1_6".owner = "riinr";
  inputs."tempfile-0_1_6".repo = "flake-nimble";
  inputs."tempfile-0_1_6".ref = "flake-pinning";
  inputs."tempfile-0_1_6".dir = "nimpkgs/t/tempfile/0_1_6";

    inputs."tempfile-0_1_7".type = "github";
  inputs."tempfile-0_1_7".owner = "riinr";
  inputs."tempfile-0_1_7".repo = "flake-nimble";
  inputs."tempfile-0_1_7".ref = "flake-pinning";
  inputs."tempfile-0_1_7".dir = "nimpkgs/t/tempfile/0_1_7";

    inputs."tempfile-v_0_1_3".type = "github";
  inputs."tempfile-v_0_1_3".owner = "riinr";
  inputs."tempfile-v_0_1_3".repo = "flake-nimble";
  inputs."tempfile-v_0_1_3".ref = "flake-pinning";
  inputs."tempfile-v_0_1_3".dir = "nimpkgs/t/tempfile/v_0_1_3";

    inputs."tempfile-v0_1_1".type = "github";
  inputs."tempfile-v0_1_1".owner = "riinr";
  inputs."tempfile-v0_1_1".repo = "flake-nimble";
  inputs."tempfile-v0_1_1".ref = "flake-pinning";
  inputs."tempfile-v0_1_1".dir = "nimpkgs/t/tempfile/v0_1_1";

    inputs."tempfile-v0_1_2".type = "github";
  inputs."tempfile-v0_1_2".owner = "riinr";
  inputs."tempfile-v0_1_2".repo = "flake-nimble";
  inputs."tempfile-v0_1_2".ref = "flake-pinning";
  inputs."tempfile-v0_1_2".dir = "nimpkgs/t/tempfile/v0_1_2";

    inputs."tempfile-v0_1_4".type = "github";
  inputs."tempfile-v0_1_4".owner = "riinr";
  inputs."tempfile-v0_1_4".repo = "flake-nimble";
  inputs."tempfile-v0_1_4".ref = "flake-pinning";
  inputs."tempfile-v0_1_4".dir = "nimpkgs/t/tempfile/v0_1_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}