{
  description = ''A db_sqlite fork with a proper typing'';
  inputs.src-ndb-master.flake = false;
  inputs.src-ndb-master.type = "github";
  inputs.src-ndb-master.owner = "xzfc";
  inputs.src-ndb-master.repo = "ndb.nim";
  inputs.src-ndb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ndb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ndb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}