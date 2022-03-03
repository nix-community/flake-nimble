{
  description = ''rena is a tiny fire/directory renaming command.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rena-master".type = "github";
  inputs."rena-master".owner = "riinr";
  inputs."rena-master".repo = "flake-nimble";
  inputs."rena-master".ref = "flake-pinning";
  inputs."rena-master".dir = "nimpkgs/r/rena/master";
  inputs."rena-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rena-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rena-v1_0_0".type = "github";
  inputs."rena-v1_0_0".owner = "riinr";
  inputs."rena-v1_0_0".repo = "flake-nimble";
  inputs."rena-v1_0_0".ref = "flake-pinning";
  inputs."rena-v1_0_0".dir = "nimpkgs/r/rena/v1_0_0";
  inputs."rena-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rena-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rena-v1_0_1".type = "github";
  inputs."rena-v1_0_1".owner = "riinr";
  inputs."rena-v1_0_1".repo = "flake-nimble";
  inputs."rena-v1_0_1".ref = "flake-pinning";
  inputs."rena-v1_0_1".dir = "nimpkgs/r/rena/v1_0_1";
  inputs."rena-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rena-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}