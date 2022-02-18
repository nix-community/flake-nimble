{
  description = ''Manage CSV files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."csvtools-master".type = "github";
  inputs."csvtools-master".owner = "riinr";
  inputs."csvtools-master".repo = "flake-nimble";
  inputs."csvtools-master".ref = "flake-pinning";
  inputs."csvtools-master".dir = "nimpkgs/c/csvtools/master";

    inputs."csvtools-0_1_0".type = "github";
  inputs."csvtools-0_1_0".owner = "riinr";
  inputs."csvtools-0_1_0".repo = "flake-nimble";
  inputs."csvtools-0_1_0".ref = "flake-pinning";
  inputs."csvtools-0_1_0".dir = "nimpkgs/c/csvtools/0_1_0";

    inputs."csvtools-0_1_1".type = "github";
  inputs."csvtools-0_1_1".owner = "riinr";
  inputs."csvtools-0_1_1".repo = "flake-nimble";
  inputs."csvtools-0_1_1".ref = "flake-pinning";
  inputs."csvtools-0_1_1".dir = "nimpkgs/c/csvtools/0_1_1";

    inputs."csvtools-0_1_2".type = "github";
  inputs."csvtools-0_1_2".owner = "riinr";
  inputs."csvtools-0_1_2".repo = "flake-nimble";
  inputs."csvtools-0_1_2".ref = "flake-pinning";
  inputs."csvtools-0_1_2".dir = "nimpkgs/c/csvtools/0_1_2";

    inputs."csvtools-0_1_3".type = "github";
  inputs."csvtools-0_1_3".owner = "riinr";
  inputs."csvtools-0_1_3".repo = "flake-nimble";
  inputs."csvtools-0_1_3".ref = "flake-pinning";
  inputs."csvtools-0_1_3".dir = "nimpkgs/c/csvtools/0_1_3";

    inputs."csvtools-0_1_4".type = "github";
  inputs."csvtools-0_1_4".owner = "riinr";
  inputs."csvtools-0_1_4".repo = "flake-nimble";
  inputs."csvtools-0_1_4".ref = "flake-pinning";
  inputs."csvtools-0_1_4".dir = "nimpkgs/c/csvtools/0_1_4";

    inputs."csvtools-0_2_0".type = "github";
  inputs."csvtools-0_2_0".owner = "riinr";
  inputs."csvtools-0_2_0".repo = "flake-nimble";
  inputs."csvtools-0_2_0".ref = "flake-pinning";
  inputs."csvtools-0_2_0".dir = "nimpkgs/c/csvtools/0_2_0";

    inputs."csvtools-0_2_1".type = "github";
  inputs."csvtools-0_2_1".owner = "riinr";
  inputs."csvtools-0_2_1".repo = "flake-nimble";
  inputs."csvtools-0_2_1".ref = "flake-pinning";
  inputs."csvtools-0_2_1".dir = "nimpkgs/c/csvtools/0_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}