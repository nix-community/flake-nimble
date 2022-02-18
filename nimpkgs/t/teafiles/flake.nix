{
  description = ''TeaFiles provide fast read/write access to time series data'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."teafiles-master".type = "github";
  inputs."teafiles-master".owner = "riinr";
  inputs."teafiles-master".repo = "flake-nimble";
  inputs."teafiles-master".ref = "flake-pinning";
  inputs."teafiles-master".dir = "nimpkgs/t/teafiles/master";

    inputs."teafiles-0_1_1".type = "github";
  inputs."teafiles-0_1_1".owner = "riinr";
  inputs."teafiles-0_1_1".repo = "flake-nimble";
  inputs."teafiles-0_1_1".ref = "flake-pinning";
  inputs."teafiles-0_1_1".dir = "nimpkgs/t/teafiles/0_1_1";

    inputs."teafiles-0_1_2".type = "github";
  inputs."teafiles-0_1_2".owner = "riinr";
  inputs."teafiles-0_1_2".repo = "flake-nimble";
  inputs."teafiles-0_1_2".ref = "flake-pinning";
  inputs."teafiles-0_1_2".dir = "nimpkgs/t/teafiles/0_1_2";

    inputs."teafiles-0_1_3".type = "github";
  inputs."teafiles-0_1_3".owner = "riinr";
  inputs."teafiles-0_1_3".repo = "flake-nimble";
  inputs."teafiles-0_1_3".ref = "flake-pinning";
  inputs."teafiles-0_1_3".dir = "nimpkgs/t/teafiles/0_1_3";

    inputs."teafiles-0_1_4".type = "github";
  inputs."teafiles-0_1_4".owner = "riinr";
  inputs."teafiles-0_1_4".repo = "flake-nimble";
  inputs."teafiles-0_1_4".ref = "flake-pinning";
  inputs."teafiles-0_1_4".dir = "nimpkgs/t/teafiles/0_1_4";

    inputs."teafiles-0_1_5".type = "github";
  inputs."teafiles-0_1_5".owner = "riinr";
  inputs."teafiles-0_1_5".repo = "flake-nimble";
  inputs."teafiles-0_1_5".ref = "flake-pinning";
  inputs."teafiles-0_1_5".dir = "nimpkgs/t/teafiles/0_1_5";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}