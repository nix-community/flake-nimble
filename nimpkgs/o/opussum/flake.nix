{
  description = ''Wrapper around libopus'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."opussum-master".type = "github";
  inputs."opussum-master".owner = "riinr";
  inputs."opussum-master".repo = "flake-nimble";
  inputs."opussum-master".ref = "flake-pinning";
  inputs."opussum-master".dir = "nimpkgs/o/opussum/master";

    inputs."opussum-0_1_0".type = "github";
  inputs."opussum-0_1_0".owner = "riinr";
  inputs."opussum-0_1_0".repo = "flake-nimble";
  inputs."opussum-0_1_0".ref = "flake-pinning";
  inputs."opussum-0_1_0".dir = "nimpkgs/o/opussum/0_1_0";

    inputs."opussum-0_2_0".type = "github";
  inputs."opussum-0_2_0".owner = "riinr";
  inputs."opussum-0_2_0".repo = "flake-nimble";
  inputs."opussum-0_2_0".ref = "flake-pinning";
  inputs."opussum-0_2_0".dir = "nimpkgs/o/opussum/0_2_0";

    inputs."opussum-0_3_0".type = "github";
  inputs."opussum-0_3_0".owner = "riinr";
  inputs."opussum-0_3_0".repo = "flake-nimble";
  inputs."opussum-0_3_0".ref = "flake-pinning";
  inputs."opussum-0_3_0".dir = "nimpkgs/o/opussum/0_3_0";

    inputs."opussum-0_4_0".type = "github";
  inputs."opussum-0_4_0".owner = "riinr";
  inputs."opussum-0_4_0".repo = "flake-nimble";
  inputs."opussum-0_4_0".ref = "flake-pinning";
  inputs."opussum-0_4_0".dir = "nimpkgs/o/opussum/0_4_0";

    inputs."opussum-0_4_1".type = "github";
  inputs."opussum-0_4_1".owner = "riinr";
  inputs."opussum-0_4_1".repo = "flake-nimble";
  inputs."opussum-0_4_1".ref = "flake-pinning";
  inputs."opussum-0_4_1".dir = "nimpkgs/o/opussum/0_4_1";

    inputs."opussum-0_4_2".type = "github";
  inputs."opussum-0_4_2".owner = "riinr";
  inputs."opussum-0_4_2".repo = "flake-nimble";
  inputs."opussum-0_4_2".ref = "flake-pinning";
  inputs."opussum-0_4_2".dir = "nimpkgs/o/opussum/0_4_2";

    inputs."opussum-0_4_3".type = "github";
  inputs."opussum-0_4_3".owner = "riinr";
  inputs."opussum-0_4_3".repo = "flake-nimble";
  inputs."opussum-0_4_3".ref = "flake-pinning";
  inputs."opussum-0_4_3".dir = "nimpkgs/o/opussum/0_4_3";

    inputs."opussum-0_5_0".type = "github";
  inputs."opussum-0_5_0".owner = "riinr";
  inputs."opussum-0_5_0".repo = "flake-nimble";
  inputs."opussum-0_5_0".ref = "flake-pinning";
  inputs."opussum-0_5_0".dir = "nimpkgs/o/opussum/0_5_0";

    inputs."opussum-0_5_1".type = "github";
  inputs."opussum-0_5_1".owner = "riinr";
  inputs."opussum-0_5_1".repo = "flake-nimble";
  inputs."opussum-0_5_1".ref = "flake-pinning";
  inputs."opussum-0_5_1".dir = "nimpkgs/o/opussum/0_5_1";

    inputs."opussum-0_6_0".type = "github";
  inputs."opussum-0_6_0".owner = "riinr";
  inputs."opussum-0_6_0".repo = "flake-nimble";
  inputs."opussum-0_6_0".ref = "flake-pinning";
  inputs."opussum-0_6_0".dir = "nimpkgs/o/opussum/0_6_0";

    inputs."opussum-0_6_1".type = "github";
  inputs."opussum-0_6_1".owner = "riinr";
  inputs."opussum-0_6_1".repo = "flake-nimble";
  inputs."opussum-0_6_1".ref = "flake-pinning";
  inputs."opussum-0_6_1".dir = "nimpkgs/o/opussum/0_6_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}