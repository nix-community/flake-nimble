{
  description = ''A db_sqlite fork with a proper typing'';
  inputs.src-ndb-v0_19_2.flake = false;
  inputs.src-ndb-v0_19_2.type = "github";
  inputs.src-ndb-v0_19_2.owner = "xzfc";
  inputs.src-ndb-v0_19_2.repo = "ndb.nim";
  inputs.src-ndb-v0_19_2.ref = "refs/tags/v0.19.2";
  
  outputs = { self, nixpkgs, src-ndb-v0_19_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndb-v0_19_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ndb-v0_19_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}