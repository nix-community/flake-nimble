{
  description = ''Utils to work with javascript'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."jsutils-master".type = "github";
  inputs."jsutils-master".owner = "riinr";
  inputs."jsutils-master".repo = "flake-nimble";
  inputs."jsutils-master".ref = "flake-pinning";
  inputs."jsutils-master".dir = "nimpkgs/j/jsutils/master";

    inputs."jsutils-0_1_1".type = "github";
  inputs."jsutils-0_1_1".owner = "riinr";
  inputs."jsutils-0_1_1".repo = "flake-nimble";
  inputs."jsutils-0_1_1".ref = "flake-pinning";
  inputs."jsutils-0_1_1".dir = "nimpkgs/j/jsutils/0_1_1";

    inputs."jsutils-0_1_2".type = "github";
  inputs."jsutils-0_1_2".owner = "riinr";
  inputs."jsutils-0_1_2".repo = "flake-nimble";
  inputs."jsutils-0_1_2".ref = "flake-pinning";
  inputs."jsutils-0_1_2".dir = "nimpkgs/j/jsutils/0_1_2";

    inputs."jsutils-0_2_0".type = "github";
  inputs."jsutils-0_2_0".owner = "riinr";
  inputs."jsutils-0_2_0".repo = "flake-nimble";
  inputs."jsutils-0_2_0".ref = "flake-pinning";
  inputs."jsutils-0_2_0".dir = "nimpkgs/j/jsutils/0_2_0";

    inputs."jsutils-0_2_1".type = "github";
  inputs."jsutils-0_2_1".owner = "riinr";
  inputs."jsutils-0_2_1".repo = "flake-nimble";
  inputs."jsutils-0_2_1".ref = "flake-pinning";
  inputs."jsutils-0_2_1".dir = "nimpkgs/j/jsutils/0_2_1";

    inputs."jsutils-0_2_2".type = "github";
  inputs."jsutils-0_2_2".owner = "riinr";
  inputs."jsutils-0_2_2".repo = "flake-nimble";
  inputs."jsutils-0_2_2".ref = "flake-pinning";
  inputs."jsutils-0_2_2".dir = "nimpkgs/j/jsutils/0_2_2";

    inputs."jsutils-0_2_3".type = "github";
  inputs."jsutils-0_2_3".owner = "riinr";
  inputs."jsutils-0_2_3".repo = "flake-nimble";
  inputs."jsutils-0_2_3".ref = "flake-pinning";
  inputs."jsutils-0_2_3".dir = "nimpkgs/j/jsutils/0_2_3";

    inputs."jsutils-0_2_4".type = "github";
  inputs."jsutils-0_2_4".owner = "riinr";
  inputs."jsutils-0_2_4".repo = "flake-nimble";
  inputs."jsutils-0_2_4".ref = "flake-pinning";
  inputs."jsutils-0_2_4".dir = "nimpkgs/j/jsutils/0_2_4";

    inputs."jsutils-0_2_5".type = "github";
  inputs."jsutils-0_2_5".owner = "riinr";
  inputs."jsutils-0_2_5".repo = "flake-nimble";
  inputs."jsutils-0_2_5".ref = "flake-pinning";
  inputs."jsutils-0_2_5".dir = "nimpkgs/j/jsutils/0_2_5";

    inputs."jsutils-0_2_6".type = "github";
  inputs."jsutils-0_2_6".owner = "riinr";
  inputs."jsutils-0_2_6".repo = "flake-nimble";
  inputs."jsutils-0_2_6".ref = "flake-pinning";
  inputs."jsutils-0_2_6".dir = "nimpkgs/j/jsutils/0_2_6";

    inputs."jsutils-0_2_7".type = "github";
  inputs."jsutils-0_2_7".owner = "riinr";
  inputs."jsutils-0_2_7".repo = "flake-nimble";
  inputs."jsutils-0_2_7".ref = "flake-pinning";
  inputs."jsutils-0_2_7".dir = "nimpkgs/j/jsutils/0_2_7";

    inputs."jsutils-v0_1_0".type = "github";
  inputs."jsutils-v0_1_0".owner = "riinr";
  inputs."jsutils-v0_1_0".repo = "flake-nimble";
  inputs."jsutils-v0_1_0".ref = "flake-pinning";
  inputs."jsutils-v0_1_0".dir = "nimpkgs/j/jsutils/v0_1_0";

    inputs."jsutils-v0_2_3".type = "github";
  inputs."jsutils-v0_2_3".owner = "riinr";
  inputs."jsutils-v0_2_3".repo = "flake-nimble";
  inputs."jsutils-v0_2_3".ref = "flake-pinning";
  inputs."jsutils-v0_2_3".dir = "nimpkgs/j/jsutils/v0_2_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}