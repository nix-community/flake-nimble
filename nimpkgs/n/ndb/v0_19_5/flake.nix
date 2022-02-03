{
  description = ''A db_sqlite fork with a proper typing'';
  inputs.src-ndb-v0_19_5.flake = false;
  inputs.src-ndb-v0_19_5.type = "github";
  inputs.src-ndb-v0_19_5.owner = "xzfc";
  inputs.src-ndb-v0_19_5.repo = "ndb.nim";
  inputs.src-ndb-v0_19_5.ref = "refs/tags/v0.19.5";
  
  outputs = { self, nixpkgs, src-ndb-v0_19_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndb-v0_19_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ndb-v0_19_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}