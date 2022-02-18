{
  description = ''Nim wrapper for the PARI library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimpari-master".type = "github";
  inputs."nimpari-master".owner = "riinr";
  inputs."nimpari-master".repo = "flake-nimble";
  inputs."nimpari-master".ref = "flake-pinning";
  inputs."nimpari-master".dir = "nimpkgs/n/nimpari/master";

    inputs."nimpari-v0_1_0".type = "github";
  inputs."nimpari-v0_1_0".owner = "riinr";
  inputs."nimpari-v0_1_0".repo = "flake-nimble";
  inputs."nimpari-v0_1_0".ref = "flake-pinning";
  inputs."nimpari-v0_1_0".dir = "nimpkgs/n/nimpari/v0_1_0";

    inputs."nimpari-v0_1_1".type = "github";
  inputs."nimpari-v0_1_1".owner = "riinr";
  inputs."nimpari-v0_1_1".repo = "flake-nimble";
  inputs."nimpari-v0_1_1".ref = "flake-pinning";
  inputs."nimpari-v0_1_1".dir = "nimpkgs/n/nimpari/v0_1_1";

    inputs."nimpari-v0_1_2".type = "github";
  inputs."nimpari-v0_1_2".owner = "riinr";
  inputs."nimpari-v0_1_2".repo = "flake-nimble";
  inputs."nimpari-v0_1_2".ref = "flake-pinning";
  inputs."nimpari-v0_1_2".dir = "nimpkgs/n/nimpari/v0_1_2";

    inputs."nimpari-v0_2_0".type = "github";
  inputs."nimpari-v0_2_0".owner = "riinr";
  inputs."nimpari-v0_2_0".repo = "flake-nimble";
  inputs."nimpari-v0_2_0".ref = "flake-pinning";
  inputs."nimpari-v0_2_0".dir = "nimpkgs/n/nimpari/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}