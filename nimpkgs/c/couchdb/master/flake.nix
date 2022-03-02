{
  description = ''A library for managing your CouchDB. Easy & comfortably to use.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-couchdb-master.flake = false;
  inputs.src-couchdb-master.type = "github";
  inputs.src-couchdb-master.owner = "theAkito";
  inputs.src-couchdb-master.repo = "nim-couchdb";
  inputs.src-couchdb-master.ref = "refs/heads/master";
  inputs.src-couchdb-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-couchdb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-couchdb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-couchdb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}