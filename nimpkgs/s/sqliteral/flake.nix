{
  description = ''A high level SQLite API for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sqliteral-master".type = "github";
  inputs."sqliteral-master".owner = "riinr";
  inputs."sqliteral-master".repo = "flake-nimble";
  inputs."sqliteral-master".ref = "flake-pinning";
  inputs."sqliteral-master".dir = "nimpkgs/s/sqliteral/master";
  inputs."sqliteral-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sqliteral-1_0_0".type = "github";
  inputs."sqliteral-1_0_0".owner = "riinr";
  inputs."sqliteral-1_0_0".repo = "flake-nimble";
  inputs."sqliteral-1_0_0".ref = "flake-pinning";
  inputs."sqliteral-1_0_0".dir = "nimpkgs/s/sqliteral/1_0_0";
  inputs."sqliteral-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sqliteral-1_1_0".type = "github";
  inputs."sqliteral-1_1_0".owner = "riinr";
  inputs."sqliteral-1_1_0".repo = "flake-nimble";
  inputs."sqliteral-1_1_0".ref = "flake-pinning";
  inputs."sqliteral-1_1_0".dir = "nimpkgs/s/sqliteral/1_1_0";
  inputs."sqliteral-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sqliteral-1_2_0".type = "github";
  inputs."sqliteral-1_2_0".owner = "riinr";
  inputs."sqliteral-1_2_0".repo = "flake-nimble";
  inputs."sqliteral-1_2_0".ref = "flake-pinning";
  inputs."sqliteral-1_2_0".dir = "nimpkgs/s/sqliteral/1_2_0";
  inputs."sqliteral-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sqliteral-1_3_0".type = "github";
  inputs."sqliteral-1_3_0".owner = "riinr";
  inputs."sqliteral-1_3_0".repo = "flake-nimble";
  inputs."sqliteral-1_3_0".ref = "flake-pinning";
  inputs."sqliteral-1_3_0".dir = "nimpkgs/s/sqliteral/1_3_0";
  inputs."sqliteral-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sqliteral-2_0_0".type = "github";
  inputs."sqliteral-2_0_0".owner = "riinr";
  inputs."sqliteral-2_0_0".repo = "flake-nimble";
  inputs."sqliteral-2_0_0".ref = "flake-pinning";
  inputs."sqliteral-2_0_0".dir = "nimpkgs/s/sqliteral/2_0_0";
  inputs."sqliteral-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sqliteral-2_0_1".type = "github";
  inputs."sqliteral-2_0_1".owner = "riinr";
  inputs."sqliteral-2_0_1".repo = "flake-nimble";
  inputs."sqliteral-2_0_1".ref = "flake-pinning";
  inputs."sqliteral-2_0_1".dir = "nimpkgs/s/sqliteral/2_0_1";
  inputs."sqliteral-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sqliteral-2_0_2".type = "github";
  inputs."sqliteral-2_0_2".owner = "riinr";
  inputs."sqliteral-2_0_2".repo = "flake-nimble";
  inputs."sqliteral-2_0_2".ref = "flake-pinning";
  inputs."sqliteral-2_0_2".dir = "nimpkgs/s/sqliteral/2_0_2";
  inputs."sqliteral-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sqliteral-3_0_0".type = "github";
  inputs."sqliteral-3_0_0".owner = "riinr";
  inputs."sqliteral-3_0_0".repo = "flake-nimble";
  inputs."sqliteral-3_0_0".ref = "flake-pinning";
  inputs."sqliteral-3_0_0".dir = "nimpkgs/s/sqliteral/3_0_0";
  inputs."sqliteral-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}