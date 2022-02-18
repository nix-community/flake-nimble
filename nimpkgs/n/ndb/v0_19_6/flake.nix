{
  description = ''A db_sqlite fork with a proper typing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ndb-v0_19_6.flake = false;
  inputs.src-ndb-v0_19_6.type = "github";
  inputs.src-ndb-v0_19_6.owner = "xzfc";
  inputs.src-ndb-v0_19_6.repo = "ndb.nim";
  inputs.src-ndb-v0_19_6.ref = "refs/tags/v0.19.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ndb-v0_19_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndb-v0_19_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ndb-v0_19_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}