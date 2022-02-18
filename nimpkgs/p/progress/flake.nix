{
  description = ''A simple progress bar for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."progress-master".type = "github";
  inputs."progress-master".owner = "riinr";
  inputs."progress-master".repo = "flake-nimble";
  inputs."progress-master".ref = "flake-pinning";
  inputs."progress-master".dir = "nimpkgs/p/progress/master";

    inputs."progress-v1_0_0".type = "github";
  inputs."progress-v1_0_0".owner = "riinr";
  inputs."progress-v1_0_0".repo = "flake-nimble";
  inputs."progress-v1_0_0".ref = "flake-pinning";
  inputs."progress-v1_0_0".dir = "nimpkgs/p/progress/v1_0_0";

    inputs."progress-v1_0_1".type = "github";
  inputs."progress-v1_0_1".owner = "riinr";
  inputs."progress-v1_0_1".repo = "flake-nimble";
  inputs."progress-v1_0_1".ref = "flake-pinning";
  inputs."progress-v1_0_1".dir = "nimpkgs/p/progress/v1_0_1";

    inputs."progress-v1_0_2".type = "github";
  inputs."progress-v1_0_2".owner = "riinr";
  inputs."progress-v1_0_2".repo = "flake-nimble";
  inputs."progress-v1_0_2".ref = "flake-pinning";
  inputs."progress-v1_0_2".dir = "nimpkgs/p/progress/v1_0_2";

    inputs."progress-v1_1_0".type = "github";
  inputs."progress-v1_1_0".owner = "riinr";
  inputs."progress-v1_1_0".repo = "flake-nimble";
  inputs."progress-v1_1_0".ref = "flake-pinning";
  inputs."progress-v1_1_0".dir = "nimpkgs/p/progress/v1_1_0";

    inputs."progress-v1_1_1".type = "github";
  inputs."progress-v1_1_1".owner = "riinr";
  inputs."progress-v1_1_1".repo = "flake-nimble";
  inputs."progress-v1_1_1".ref = "flake-pinning";
  inputs."progress-v1_1_1".dir = "nimpkgs/p/progress/v1_1_1";

    inputs."progress-v1_1_3".type = "github";
  inputs."progress-v1_1_3".owner = "riinr";
  inputs."progress-v1_1_3".repo = "flake-nimble";
  inputs."progress-v1_1_3".ref = "flake-pinning";
  inputs."progress-v1_1_3".dir = "nimpkgs/p/progress/v1_1_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}