{
  description = ''OpenDocument Spreadhseet reader'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."odsreader-master".type = "github";
  inputs."odsreader-master".owner = "riinr";
  inputs."odsreader-master".repo = "flake-nimble";
  inputs."odsreader-master".ref = "flake-pinning";
  inputs."odsreader-master".dir = "nimpkgs/o/odsreader/master";

    inputs."odsreader-v0_1_0".type = "github";
  inputs."odsreader-v0_1_0".owner = "riinr";
  inputs."odsreader-v0_1_0".repo = "flake-nimble";
  inputs."odsreader-v0_1_0".ref = "flake-pinning";
  inputs."odsreader-v0_1_0".dir = "nimpkgs/o/odsreader/v0_1_0";

    inputs."odsreader-v0_2_0".type = "github";
  inputs."odsreader-v0_2_0".owner = "riinr";
  inputs."odsreader-v0_2_0".repo = "flake-nimble";
  inputs."odsreader-v0_2_0".ref = "flake-pinning";
  inputs."odsreader-v0_2_0".dir = "nimpkgs/o/odsreader/v0_2_0";

    inputs."odsreader-v0_3_0".type = "github";
  inputs."odsreader-v0_3_0".owner = "riinr";
  inputs."odsreader-v0_3_0".repo = "flake-nimble";
  inputs."odsreader-v0_3_0".ref = "flake-pinning";
  inputs."odsreader-v0_3_0".dir = "nimpkgs/o/odsreader/v0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}