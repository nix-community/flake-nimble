{
  description = ''A db_sqlite fork with a proper typing'';
  inputs.src-ndb-v0_19_7.flake = false;
  inputs.src-ndb-v0_19_7.type = "github";
  inputs.src-ndb-v0_19_7.owner = "xzfc";
  inputs.src-ndb-v0_19_7.repo = "ndb.nim";
  inputs.src-ndb-v0_19_7.ref = "refs/tags/v0.19.7";
  
  outputs = { self, nixpkgs, src-ndb-v0_19_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndb-v0_19_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ndb-v0_19_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}