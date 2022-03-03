{
  description = ''extension modules for Nim's 'db_*' modules'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ndbex-master".type = "github";
  inputs."ndbex-master".owner = "riinr";
  inputs."ndbex-master".repo = "flake-nimble";
  inputs."ndbex-master".ref = "flake-pinning";
  inputs."ndbex-master".dir = "nimpkgs/n/ndbex/master";
  inputs."ndbex-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndbex-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}