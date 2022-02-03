{
  description = ''A db_sqlite fork with a proper typing'';
  inputs.src-ndb-v0_19_8.flake = false;
  inputs.src-ndb-v0_19_8.type = "github";
  inputs.src-ndb-v0_19_8.owner = "xzfc";
  inputs.src-ndb-v0_19_8.repo = "ndb.nim";
  inputs.src-ndb-v0_19_8.ref = "refs/tags/v0.19.8";
  
  outputs = { self, nixpkgs, src-ndb-v0_19_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndb-v0_19_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ndb-v0_19_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}