{
  description = ''A library for managing your CouchDB. Easy & comfortably to use.'';
  inputs.src-couchdb-master.flake = false;
  inputs.src-couchdb-master.type = "github";
  inputs.src-couchdb-master.owner = "theAkito";
  inputs.src-couchdb-master.repo = "nim-couchdb";
  inputs.src-couchdb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-couchdb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-couchdb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-couchdb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}