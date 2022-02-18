{
  description = ''rena is a tiny fire/directory renaming command.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."rena-master".type = "github";
  inputs."rena-master".owner = "riinr";
  inputs."rena-master".repo = "flake-nimble";
  inputs."rena-master".ref = "flake-pinning";
  inputs."rena-master".dir = "nimpkgs/r/rena/master";

    inputs."rena-v1_0_0".type = "github";
  inputs."rena-v1_0_0".owner = "riinr";
  inputs."rena-v1_0_0".repo = "flake-nimble";
  inputs."rena-v1_0_0".ref = "flake-pinning";
  inputs."rena-v1_0_0".dir = "nimpkgs/r/rena/v1_0_0";

    inputs."rena-v1_0_1".type = "github";
  inputs."rena-v1_0_1".owner = "riinr";
  inputs."rena-v1_0_1".repo = "flake-nimble";
  inputs."rena-v1_0_1".ref = "flake-pinning";
  inputs."rena-v1_0_1".dir = "nimpkgs/r/rena/v1_0_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}