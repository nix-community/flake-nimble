{
  description = ''A library for managing your CouchDB. Easy & comfortably to use.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."couchdb-master".type = "github";
  inputs."couchdb-master".owner = "riinr";
  inputs."couchdb-master".repo = "flake-nimble";
  inputs."couchdb-master".ref = "flake-pinning";
  inputs."couchdb-master".dir = "nimpkgs/c/couchdb/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}