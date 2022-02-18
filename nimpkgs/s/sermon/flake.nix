{
  description = ''Monitor the state and memory of processes and URL response.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."sermon-master".type = "github";
  inputs."sermon-master".owner = "riinr";
  inputs."sermon-master".repo = "flake-nimble";
  inputs."sermon-master".ref = "flake-pinning";
  inputs."sermon-master".dir = "nimpkgs/s/sermon/master";

    inputs."sermon-v0_1_1".type = "github";
  inputs."sermon-v0_1_1".owner = "riinr";
  inputs."sermon-v0_1_1".repo = "flake-nimble";
  inputs."sermon-v0_1_1".ref = "flake-pinning";
  inputs."sermon-v0_1_1".dir = "nimpkgs/s/sermon/v0_1_1";

    inputs."sermon-v0_2_6".type = "github";
  inputs."sermon-v0_2_6".owner = "riinr";
  inputs."sermon-v0_2_6".repo = "flake-nimble";
  inputs."sermon-v0_2_6".ref = "flake-pinning";
  inputs."sermon-v0_2_6".dir = "nimpkgs/s/sermon/v0_2_6";

    inputs."sermon-v0_2_7".type = "github";
  inputs."sermon-v0_2_7".owner = "riinr";
  inputs."sermon-v0_2_7".repo = "flake-nimble";
  inputs."sermon-v0_2_7".ref = "flake-pinning";
  inputs."sermon-v0_2_7".dir = "nimpkgs/s/sermon/v0_2_7";

    inputs."sermon-v0_2_8".type = "github";
  inputs."sermon-v0_2_8".owner = "riinr";
  inputs."sermon-v0_2_8".repo = "flake-nimble";
  inputs."sermon-v0_2_8".ref = "flake-pinning";
  inputs."sermon-v0_2_8".dir = "nimpkgs/s/sermon/v0_2_8";

    inputs."sermon-v0_3_0".type = "github";
  inputs."sermon-v0_3_0".owner = "riinr";
  inputs."sermon-v0_3_0".repo = "flake-nimble";
  inputs."sermon-v0_3_0".ref = "flake-pinning";
  inputs."sermon-v0_3_0".dir = "nimpkgs/s/sermon/v0_3_0";

    inputs."sermon-v0_3_1".type = "github";
  inputs."sermon-v0_3_1".owner = "riinr";
  inputs."sermon-v0_3_1".repo = "flake-nimble";
  inputs."sermon-v0_3_1".ref = "flake-pinning";
  inputs."sermon-v0_3_1".dir = "nimpkgs/s/sermon/v0_3_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}