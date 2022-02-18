{
  description = ''`rm` files without fear'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."crap-master".type = "github";
  inputs."crap-master".owner = "riinr";
  inputs."crap-master".repo = "flake-nimble";
  inputs."crap-master".ref = "flake-pinning";
  inputs."crap-master".dir = "nimpkgs/c/crap/master";

    inputs."crap-v0_1_0".type = "github";
  inputs."crap-v0_1_0".owner = "riinr";
  inputs."crap-v0_1_0".repo = "flake-nimble";
  inputs."crap-v0_1_0".ref = "flake-pinning";
  inputs."crap-v0_1_0".dir = "nimpkgs/c/crap/v0_1_0";

    inputs."crap-v0_1_1".type = "github";
  inputs."crap-v0_1_1".owner = "riinr";
  inputs."crap-v0_1_1".repo = "flake-nimble";
  inputs."crap-v0_1_1".ref = "flake-pinning";
  inputs."crap-v0_1_1".dir = "nimpkgs/c/crap/v0_1_1";

    inputs."crap-v0_1_2".type = "github";
  inputs."crap-v0_1_2".owner = "riinr";
  inputs."crap-v0_1_2".repo = "flake-nimble";
  inputs."crap-v0_1_2".ref = "flake-pinning";
  inputs."crap-v0_1_2".dir = "nimpkgs/c/crap/v0_1_2";

    inputs."crap-v0_2_0".type = "github";
  inputs."crap-v0_2_0".owner = "riinr";
  inputs."crap-v0_2_0".repo = "flake-nimble";
  inputs."crap-v0_2_0".ref = "flake-pinning";
  inputs."crap-v0_2_0".dir = "nimpkgs/c/crap/v0_2_0";

    inputs."crap-v0_2_1".type = "github";
  inputs."crap-v0_2_1".owner = "riinr";
  inputs."crap-v0_2_1".repo = "flake-nimble";
  inputs."crap-v0_2_1".ref = "flake-pinning";
  inputs."crap-v0_2_1".dir = "nimpkgs/c/crap/v0_2_1";

    inputs."crap-v0_2_2".type = "github";
  inputs."crap-v0_2_2".owner = "riinr";
  inputs."crap-v0_2_2".repo = "flake-nimble";
  inputs."crap-v0_2_2".ref = "flake-pinning";
  inputs."crap-v0_2_2".dir = "nimpkgs/c/crap/v0_2_2";

    inputs."crap-v0_2_3".type = "github";
  inputs."crap-v0_2_3".owner = "riinr";
  inputs."crap-v0_2_3".repo = "flake-nimble";
  inputs."crap-v0_2_3".ref = "flake-pinning";
  inputs."crap-v0_2_3".dir = "nimpkgs/c/crap/v0_2_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}