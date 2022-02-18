{
  description = ''github api'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."github-master".type = "github";
  inputs."github-master".owner = "riinr";
  inputs."github-master".repo = "flake-nimble";
  inputs."github-master".ref = "flake-pinning";
  inputs."github-master".dir = "nimpkgs/g/github/master";

    inputs."github-1_0_0".type = "github";
  inputs."github-1_0_0".owner = "riinr";
  inputs."github-1_0_0".repo = "flake-nimble";
  inputs."github-1_0_0".ref = "flake-pinning";
  inputs."github-1_0_0".dir = "nimpkgs/g/github/1_0_0";

    inputs."github-1_0_1".type = "github";
  inputs."github-1_0_1".owner = "riinr";
  inputs."github-1_0_1".repo = "flake-nimble";
  inputs."github-1_0_1".ref = "flake-pinning";
  inputs."github-1_0_1".dir = "nimpkgs/g/github/1_0_1";

    inputs."github-1_0_2".type = "github";
  inputs."github-1_0_2".owner = "riinr";
  inputs."github-1_0_2".repo = "flake-nimble";
  inputs."github-1_0_2".ref = "flake-pinning";
  inputs."github-1_0_2".dir = "nimpkgs/g/github/1_0_2";

    inputs."github-1_0_3".type = "github";
  inputs."github-1_0_3".owner = "riinr";
  inputs."github-1_0_3".repo = "flake-nimble";
  inputs."github-1_0_3".ref = "flake-pinning";
  inputs."github-1_0_3".dir = "nimpkgs/g/github/1_0_3";

    inputs."github-1_0_4".type = "github";
  inputs."github-1_0_4".owner = "riinr";
  inputs."github-1_0_4".repo = "flake-nimble";
  inputs."github-1_0_4".ref = "flake-pinning";
  inputs."github-1_0_4".dir = "nimpkgs/g/github/1_0_4";

    inputs."github-2_0_0".type = "github";
  inputs."github-2_0_0".owner = "riinr";
  inputs."github-2_0_0".repo = "flake-nimble";
  inputs."github-2_0_0".ref = "flake-pinning";
  inputs."github-2_0_0".dir = "nimpkgs/g/github/2_0_0";

    inputs."github-2_0_1".type = "github";
  inputs."github-2_0_1".owner = "riinr";
  inputs."github-2_0_1".repo = "flake-nimble";
  inputs."github-2_0_1".ref = "flake-pinning";
  inputs."github-2_0_1".dir = "nimpkgs/g/github/2_0_1";

    inputs."github-2_0_2".type = "github";
  inputs."github-2_0_2".owner = "riinr";
  inputs."github-2_0_2".repo = "flake-nimble";
  inputs."github-2_0_2".ref = "flake-pinning";
  inputs."github-2_0_2".dir = "nimpkgs/g/github/2_0_2";

    inputs."github-2_0_3".type = "github";
  inputs."github-2_0_3".owner = "riinr";
  inputs."github-2_0_3".repo = "flake-nimble";
  inputs."github-2_0_3".ref = "flake-pinning";
  inputs."github-2_0_3".dir = "nimpkgs/g/github/2_0_3";

    inputs."github-2_0_4".type = "github";
  inputs."github-2_0_4".owner = "riinr";
  inputs."github-2_0_4".repo = "flake-nimble";
  inputs."github-2_0_4".ref = "flake-pinning";
  inputs."github-2_0_4".dir = "nimpkgs/g/github/2_0_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}