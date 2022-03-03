{
  description = ''A simple database migration utility for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."migrate-master".type = "github";
  inputs."migrate-master".owner = "riinr";
  inputs."migrate-master".repo = "flake-nimble";
  inputs."migrate-master".ref = "flake-pinning";
  inputs."migrate-master".dir = "nimpkgs/m/migrate/master";
  inputs."migrate-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."migrate-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."migrate-v1_0_0".type = "github";
  inputs."migrate-v1_0_0".owner = "riinr";
  inputs."migrate-v1_0_0".repo = "flake-nimble";
  inputs."migrate-v1_0_0".ref = "flake-pinning";
  inputs."migrate-v1_0_0".dir = "nimpkgs/m/migrate/v1_0_0";
  inputs."migrate-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."migrate-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}