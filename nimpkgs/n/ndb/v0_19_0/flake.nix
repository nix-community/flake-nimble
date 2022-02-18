{
  description = ''A db_sqlite fork with a proper typing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ndb-v0_19_0.flake = false;
  inputs.src-ndb-v0_19_0.type = "github";
  inputs.src-ndb-v0_19_0.owner = "xzfc";
  inputs.src-ndb-v0_19_0.repo = "ndb.nim";
  inputs.src-ndb-v0_19_0.ref = "refs/tags/v0.19.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ndb-v0_19_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndb-v0_19_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ndb-v0_19_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}