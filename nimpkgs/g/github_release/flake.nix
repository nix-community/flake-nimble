{
  description = ''github-release package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."github_release-master".type = "github";
  inputs."github_release-master".owner = "riinr";
  inputs."github_release-master".repo = "flake-nimble";
  inputs."github_release-master".ref = "flake-pinning";
  inputs."github_release-master".dir = "nimpkgs/g/github_release/master";

    inputs."github_release-releases".type = "github";
  inputs."github_release-releases".owner = "riinr";
  inputs."github_release-releases".repo = "flake-nimble";
  inputs."github_release-releases".ref = "flake-pinning";
  inputs."github_release-releases".dir = "nimpkgs/g/github_release/releases";

    inputs."github_release-v0_1_0".type = "github";
  inputs."github_release-v0_1_0".owner = "riinr";
  inputs."github_release-v0_1_0".repo = "flake-nimble";
  inputs."github_release-v0_1_0".ref = "flake-pinning";
  inputs."github_release-v0_1_0".dir = "nimpkgs/g/github_release/v0_1_0";

    inputs."github_release-v0_1_0-alpha".type = "github";
  inputs."github_release-v0_1_0-alpha".owner = "riinr";
  inputs."github_release-v0_1_0-alpha".repo = "flake-nimble";
  inputs."github_release-v0_1_0-alpha".ref = "flake-pinning";
  inputs."github_release-v0_1_0-alpha".dir = "nimpkgs/g/github_release/v0_1_0-alpha";

    inputs."github_release-v0_1_1-alpha".type = "github";
  inputs."github_release-v0_1_1-alpha".owner = "riinr";
  inputs."github_release-v0_1_1-alpha".repo = "flake-nimble";
  inputs."github_release-v0_1_1-alpha".ref = "flake-pinning";
  inputs."github_release-v0_1_1-alpha".dir = "nimpkgs/g/github_release/v0_1_1-alpha";

    inputs."github_release-v0_1_2".type = "github";
  inputs."github_release-v0_1_2".owner = "riinr";
  inputs."github_release-v0_1_2".repo = "flake-nimble";
  inputs."github_release-v0_1_2".ref = "flake-pinning";
  inputs."github_release-v0_1_2".dir = "nimpkgs/g/github_release/v0_1_2";

    inputs."github_release-v0_1_3".type = "github";
  inputs."github_release-v0_1_3".owner = "riinr";
  inputs."github_release-v0_1_3".repo = "flake-nimble";
  inputs."github_release-v0_1_3".ref = "flake-pinning";
  inputs."github_release-v0_1_3".dir = "nimpkgs/g/github_release/v0_1_3";

    inputs."github_release-v0_1_4".type = "github";
  inputs."github_release-v0_1_4".owner = "riinr";
  inputs."github_release-v0_1_4".repo = "flake-nimble";
  inputs."github_release-v0_1_4".ref = "flake-pinning";
  inputs."github_release-v0_1_4".dir = "nimpkgs/g/github_release/v0_1_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}