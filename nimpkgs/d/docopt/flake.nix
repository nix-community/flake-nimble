{
  description = ''Command-line args parser based on Usage message'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."docopt-master".type = "github";
  inputs."docopt-master".owner = "riinr";
  inputs."docopt-master".repo = "flake-nimble";
  inputs."docopt-master".ref = "flake-pinning";
  inputs."docopt-master".dir = "nimpkgs/d/docopt/master";

    inputs."docopt-v0_6_0".type = "github";
  inputs."docopt-v0_6_0".owner = "riinr";
  inputs."docopt-v0_6_0".repo = "flake-nimble";
  inputs."docopt-v0_6_0".ref = "flake-pinning";
  inputs."docopt-v0_6_0".dir = "nimpkgs/d/docopt/v0_6_0";

    inputs."docopt-v0_6_1".type = "github";
  inputs."docopt-v0_6_1".owner = "riinr";
  inputs."docopt-v0_6_1".repo = "flake-nimble";
  inputs."docopt-v0_6_1".ref = "flake-pinning";
  inputs."docopt-v0_6_1".dir = "nimpkgs/d/docopt/v0_6_1";

    inputs."docopt-v0_6_2".type = "github";
  inputs."docopt-v0_6_2".owner = "riinr";
  inputs."docopt-v0_6_2".repo = "flake-nimble";
  inputs."docopt-v0_6_2".ref = "flake-pinning";
  inputs."docopt-v0_6_2".dir = "nimpkgs/d/docopt/v0_6_2";

    inputs."docopt-v0_6_3".type = "github";
  inputs."docopt-v0_6_3".owner = "riinr";
  inputs."docopt-v0_6_3".repo = "flake-nimble";
  inputs."docopt-v0_6_3".ref = "flake-pinning";
  inputs."docopt-v0_6_3".dir = "nimpkgs/d/docopt/v0_6_3";

    inputs."docopt-v0_6_4".type = "github";
  inputs."docopt-v0_6_4".owner = "riinr";
  inputs."docopt-v0_6_4".repo = "flake-nimble";
  inputs."docopt-v0_6_4".ref = "flake-pinning";
  inputs."docopt-v0_6_4".dir = "nimpkgs/d/docopt/v0_6_4";

    inputs."docopt-v0_6_5".type = "github";
  inputs."docopt-v0_6_5".owner = "riinr";
  inputs."docopt-v0_6_5".repo = "flake-nimble";
  inputs."docopt-v0_6_5".ref = "flake-pinning";
  inputs."docopt-v0_6_5".dir = "nimpkgs/d/docopt/v0_6_5";

    inputs."docopt-v0_6_6".type = "github";
  inputs."docopt-v0_6_6".owner = "riinr";
  inputs."docopt-v0_6_6".repo = "flake-nimble";
  inputs."docopt-v0_6_6".ref = "flake-pinning";
  inputs."docopt-v0_6_6".dir = "nimpkgs/d/docopt/v0_6_6";

    inputs."docopt-v0_6_7".type = "github";
  inputs."docopt-v0_6_7".owner = "riinr";
  inputs."docopt-v0_6_7".repo = "flake-nimble";
  inputs."docopt-v0_6_7".ref = "flake-pinning";
  inputs."docopt-v0_6_7".dir = "nimpkgs/d/docopt/v0_6_7";

    inputs."docopt-v0_6_8".type = "github";
  inputs."docopt-v0_6_8".owner = "riinr";
  inputs."docopt-v0_6_8".repo = "flake-nimble";
  inputs."docopt-v0_6_8".ref = "flake-pinning";
  inputs."docopt-v0_6_8".dir = "nimpkgs/d/docopt/v0_6_8";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}