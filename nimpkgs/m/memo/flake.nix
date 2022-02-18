{
  description = ''Memoize Nim functions'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."memo-master".type = "github";
  inputs."memo-master".owner = "riinr";
  inputs."memo-master".repo = "flake-nimble";
  inputs."memo-master".ref = "flake-pinning";
  inputs."memo-master".dir = "nimpkgs/m/memo/master";

    inputs."memo-0_1_0".type = "github";
  inputs."memo-0_1_0".owner = "riinr";
  inputs."memo-0_1_0".repo = "flake-nimble";
  inputs."memo-0_1_0".ref = "flake-pinning";
  inputs."memo-0_1_0".dir = "nimpkgs/m/memo/0_1_0";

    inputs."memo-0_1_1".type = "github";
  inputs."memo-0_1_1".owner = "riinr";
  inputs."memo-0_1_1".repo = "flake-nimble";
  inputs."memo-0_1_1".ref = "flake-pinning";
  inputs."memo-0_1_1".dir = "nimpkgs/m/memo/0_1_1";

    inputs."memo-0_1_2".type = "github";
  inputs."memo-0_1_2".owner = "riinr";
  inputs."memo-0_1_2".repo = "flake-nimble";
  inputs."memo-0_1_2".ref = "flake-pinning";
  inputs."memo-0_1_2".dir = "nimpkgs/m/memo/0_1_2";

    inputs."memo-0_1_3".type = "github";
  inputs."memo-0_1_3".owner = "riinr";
  inputs."memo-0_1_3".repo = "flake-nimble";
  inputs."memo-0_1_3".ref = "flake-pinning";
  inputs."memo-0_1_3".dir = "nimpkgs/m/memo/0_1_3";

    inputs."memo-0_2_0".type = "github";
  inputs."memo-0_2_0".owner = "riinr";
  inputs."memo-0_2_0".repo = "flake-nimble";
  inputs."memo-0_2_0".ref = "flake-pinning";
  inputs."memo-0_2_0".dir = "nimpkgs/m/memo/0_2_0";

    inputs."memo-0_2_1".type = "github";
  inputs."memo-0_2_1".owner = "riinr";
  inputs."memo-0_2_1".repo = "flake-nimble";
  inputs."memo-0_2_1".ref = "flake-pinning";
  inputs."memo-0_2_1".dir = "nimpkgs/m/memo/0_2_1";

    inputs."memo-0_2_2".type = "github";
  inputs."memo-0_2_2".owner = "riinr";
  inputs."memo-0_2_2".repo = "flake-nimble";
  inputs."memo-0_2_2".ref = "flake-pinning";
  inputs."memo-0_2_2".dir = "nimpkgs/m/memo/0_2_2";

    inputs."memo-0_3_0".type = "github";
  inputs."memo-0_3_0".owner = "riinr";
  inputs."memo-0_3_0".repo = "flake-nimble";
  inputs."memo-0_3_0".ref = "flake-pinning";
  inputs."memo-0_3_0".dir = "nimpkgs/m/memo/0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}