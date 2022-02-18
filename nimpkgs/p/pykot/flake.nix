{
  description = ''Porting some Python / Kotlin features to Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."pykot-master".type = "github";
  inputs."pykot-master".owner = "riinr";
  inputs."pykot-master".repo = "flake-nimble";
  inputs."pykot-master".ref = "flake-pinning";
  inputs."pykot-master".dir = "nimpkgs/p/pykot/master";

    inputs."pykot-v0_1_0".type = "github";
  inputs."pykot-v0_1_0".owner = "riinr";
  inputs."pykot-v0_1_0".repo = "flake-nimble";
  inputs."pykot-v0_1_0".ref = "flake-pinning";
  inputs."pykot-v0_1_0".dir = "nimpkgs/p/pykot/v0_1_0";

    inputs."pykot-v0_1_1".type = "github";
  inputs."pykot-v0_1_1".owner = "riinr";
  inputs."pykot-v0_1_1".repo = "flake-nimble";
  inputs."pykot-v0_1_1".ref = "flake-pinning";
  inputs."pykot-v0_1_1".dir = "nimpkgs/p/pykot/v0_1_1";

    inputs."pykot-v0_1_2".type = "github";
  inputs."pykot-v0_1_2".owner = "riinr";
  inputs."pykot-v0_1_2".repo = "flake-nimble";
  inputs."pykot-v0_1_2".ref = "flake-pinning";
  inputs."pykot-v0_1_2".dir = "nimpkgs/p/pykot/v0_1_2";

    inputs."pykot-v0_1_3".type = "github";
  inputs."pykot-v0_1_3".owner = "riinr";
  inputs."pykot-v0_1_3".repo = "flake-nimble";
  inputs."pykot-v0_1_3".ref = "flake-pinning";
  inputs."pykot-v0_1_3".dir = "nimpkgs/p/pykot/v0_1_3";

    inputs."pykot-v0_2_0".type = "github";
  inputs."pykot-v0_2_0".owner = "riinr";
  inputs."pykot-v0_2_0".repo = "flake-nimble";
  inputs."pykot-v0_2_0".ref = "flake-pinning";
  inputs."pykot-v0_2_0".dir = "nimpkgs/p/pykot/v0_2_0";

    inputs."pykot-v0_2_1".type = "github";
  inputs."pykot-v0_2_1".owner = "riinr";
  inputs."pykot-v0_2_1".repo = "flake-nimble";
  inputs."pykot-v0_2_1".ref = "flake-pinning";
  inputs."pykot-v0_2_1".dir = "nimpkgs/p/pykot/v0_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}