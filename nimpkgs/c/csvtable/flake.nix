{
  description = ''tools for handling CSV files (comma or tab-separated) with an API similar to Python's CSVDictReader and -Writer.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."csvtable-master".type = "github";
  inputs."csvtable-master".owner = "riinr";
  inputs."csvtable-master".repo = "flake-nimble";
  inputs."csvtable-master".ref = "flake-pinning";
  inputs."csvtable-master".dir = "nimpkgs/c/csvtable/master";

    inputs."csvtable-0_2_0".type = "github";
  inputs."csvtable-0_2_0".owner = "riinr";
  inputs."csvtable-0_2_0".repo = "flake-nimble";
  inputs."csvtable-0_2_0".ref = "flake-pinning";
  inputs."csvtable-0_2_0".dir = "nimpkgs/c/csvtable/0_2_0";

    inputs."csvtable-0_3_0".type = "github";
  inputs."csvtable-0_3_0".owner = "riinr";
  inputs."csvtable-0_3_0".repo = "flake-nimble";
  inputs."csvtable-0_3_0".ref = "flake-pinning";
  inputs."csvtable-0_3_0".dir = "nimpkgs/c/csvtable/0_3_0";

    inputs."csvtable-v0_3_1".type = "github";
  inputs."csvtable-v0_3_1".owner = "riinr";
  inputs."csvtable-v0_3_1".repo = "flake-nimble";
  inputs."csvtable-v0_3_1".ref = "flake-pinning";
  inputs."csvtable-v0_3_1".dir = "nimpkgs/c/csvtable/v0_3_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}