{
  description = ''Small, dependency-free, fast Nim package (and CLI tool) for removing tracking fields from URLs.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."unalix-master".type = "github";
  inputs."unalix-master".owner = "riinr";
  inputs."unalix-master".repo = "flake-nimble";
  inputs."unalix-master".ref = "flake-pinning";
  inputs."unalix-master".dir = "nimpkgs/u/unalix/master";

    inputs."unalix-v0_1".type = "github";
  inputs."unalix-v0_1".owner = "riinr";
  inputs."unalix-v0_1".repo = "flake-nimble";
  inputs."unalix-v0_1".ref = "flake-pinning";
  inputs."unalix-v0_1".dir = "nimpkgs/u/unalix/v0_1";

    inputs."unalix-v0_2".type = "github";
  inputs."unalix-v0_2".owner = "riinr";
  inputs."unalix-v0_2".repo = "flake-nimble";
  inputs."unalix-v0_2".ref = "flake-pinning";
  inputs."unalix-v0_2".dir = "nimpkgs/u/unalix/v0_2";

    inputs."unalix-v0_3".type = "github";
  inputs."unalix-v0_3".owner = "riinr";
  inputs."unalix-v0_3".repo = "flake-nimble";
  inputs."unalix-v0_3".ref = "flake-pinning";
  inputs."unalix-v0_3".dir = "nimpkgs/u/unalix/v0_3";

    inputs."unalix-v0_4".type = "github";
  inputs."unalix-v0_4".owner = "riinr";
  inputs."unalix-v0_4".repo = "flake-nimble";
  inputs."unalix-v0_4".ref = "flake-pinning";
  inputs."unalix-v0_4".dir = "nimpkgs/u/unalix/v0_4";

    inputs."unalix-v0_5".type = "github";
  inputs."unalix-v0_5".owner = "riinr";
  inputs."unalix-v0_5".repo = "flake-nimble";
  inputs."unalix-v0_5".ref = "flake-pinning";
  inputs."unalix-v0_5".dir = "nimpkgs/u/unalix/v0_5";

    inputs."unalix-v0_5_1".type = "github";
  inputs."unalix-v0_5_1".owner = "riinr";
  inputs."unalix-v0_5_1".repo = "flake-nimble";
  inputs."unalix-v0_5_1".ref = "flake-pinning";
  inputs."unalix-v0_5_1".dir = "nimpkgs/u/unalix/v0_5_1";

    inputs."unalix-v0_6".type = "github";
  inputs."unalix-v0_6".owner = "riinr";
  inputs."unalix-v0_6".repo = "flake-nimble";
  inputs."unalix-v0_6".ref = "flake-pinning";
  inputs."unalix-v0_6".dir = "nimpkgs/u/unalix/v0_6";

    inputs."unalix-v0_6_1".type = "github";
  inputs."unalix-v0_6_1".owner = "riinr";
  inputs."unalix-v0_6_1".repo = "flake-nimble";
  inputs."unalix-v0_6_1".ref = "flake-pinning";
  inputs."unalix-v0_6_1".dir = "nimpkgs/u/unalix/v0_6_1";

    inputs."unalix-v0_7".type = "github";
  inputs."unalix-v0_7".owner = "riinr";
  inputs."unalix-v0_7".repo = "flake-nimble";
  inputs."unalix-v0_7".ref = "flake-pinning";
  inputs."unalix-v0_7".dir = "nimpkgs/u/unalix/v0_7";

    inputs."unalix-v0_8".type = "github";
  inputs."unalix-v0_8".owner = "riinr";
  inputs."unalix-v0_8".repo = "flake-nimble";
  inputs."unalix-v0_8".ref = "flake-pinning";
  inputs."unalix-v0_8".dir = "nimpkgs/u/unalix/v0_8";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}