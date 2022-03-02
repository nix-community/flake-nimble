{
  description = ''The parsesql module implements a high performance SQL file parser. It parses PostgreSQL syntax and the SQL ANSI standard.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."parsesql-master".type = "github";
  inputs."parsesql-master".owner = "riinr";
  inputs."parsesql-master".repo = "flake-nimble";
  inputs."parsesql-master".ref = "flake-pinning";
  inputs."parsesql-master".dir = "nimpkgs/p/parsesql/master";
  inputs."parsesql-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsesql-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."parsesql-v0_1_1".type = "github";
  inputs."parsesql-v0_1_1".owner = "riinr";
  inputs."parsesql-v0_1_1".repo = "flake-nimble";
  inputs."parsesql-v0_1_1".ref = "flake-pinning";
  inputs."parsesql-v0_1_1".dir = "nimpkgs/p/parsesql/v0_1_1";
  inputs."parsesql-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsesql-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}