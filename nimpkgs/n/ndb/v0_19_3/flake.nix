{
  description = ''A db_sqlite fork with a proper typing'';
  inputs.src-ndb-v0_19_3.flake = false;
  inputs.src-ndb-v0_19_3.type = "github";
  inputs.src-ndb-v0_19_3.owner = "xzfc";
  inputs.src-ndb-v0_19_3.repo = "ndb.nim";
  inputs.src-ndb-v0_19_3.ref = "refs/tags/v0.19.3";
  
  outputs = { self, nixpkgs, src-ndb-v0_19_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndb-v0_19_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ndb-v0_19_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}