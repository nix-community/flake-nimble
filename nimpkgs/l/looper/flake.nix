{
  description = ''for loop macros'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."looper-master".type = "github";
  inputs."looper-master".owner = "riinr";
  inputs."looper-master".repo = "flake-nimble";
  inputs."looper-master".ref = "flake-pinning";
  inputs."looper-master".dir = "nimpkgs/l/looper/master";

    inputs."looper-v0_2_0".type = "github";
  inputs."looper-v0_2_0".owner = "riinr";
  inputs."looper-v0_2_0".repo = "flake-nimble";
  inputs."looper-v0_2_0".ref = "flake-pinning";
  inputs."looper-v0_2_0".dir = "nimpkgs/l/looper/v0_2_0";

    inputs."looper-v0_4_0".type = "github";
  inputs."looper-v0_4_0".owner = "riinr";
  inputs."looper-v0_4_0".repo = "flake-nimble";
  inputs."looper-v0_4_0".ref = "flake-pinning";
  inputs."looper-v0_4_0".dir = "nimpkgs/l/looper/v0_4_0";

    inputs."looper-v0_5_0".type = "github";
  inputs."looper-v0_5_0".owner = "riinr";
  inputs."looper-v0_5_0".repo = "flake-nimble";
  inputs."looper-v0_5_0".ref = "flake-pinning";
  inputs."looper-v0_5_0".dir = "nimpkgs/l/looper/v0_5_0";

    inputs."looper-v0_6_0".type = "github";
  inputs."looper-v0_6_0".owner = "riinr";
  inputs."looper-v0_6_0".repo = "flake-nimble";
  inputs."looper-v0_6_0".ref = "flake-pinning";
  inputs."looper-v0_6_0".dir = "nimpkgs/l/looper/v0_6_0";

    inputs."looper-v0_7_0".type = "github";
  inputs."looper-v0_7_0".owner = "riinr";
  inputs."looper-v0_7_0".repo = "flake-nimble";
  inputs."looper-v0_7_0".ref = "flake-pinning";
  inputs."looper-v0_7_0".dir = "nimpkgs/l/looper/v0_7_0";

    inputs."looper-v0_8_0".type = "github";
  inputs."looper-v0_8_0".owner = "riinr";
  inputs."looper-v0_8_0".repo = "flake-nimble";
  inputs."looper-v0_8_0".ref = "flake-pinning";
  inputs."looper-v0_8_0".dir = "nimpkgs/l/looper/v0_8_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}