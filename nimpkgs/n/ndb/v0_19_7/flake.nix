{
  description = ''A db_sqlite fork with a proper typing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ndb-v0_19_7.flake = false;
  inputs.src-ndb-v0_19_7.type = "github";
  inputs.src-ndb-v0_19_7.owner = "xzfc";
  inputs.src-ndb-v0_19_7.repo = "ndb.nim";
  inputs.src-ndb-v0_19_7.ref = "refs/tags/v0.19.7";
  inputs.src-ndb-v0_19_7.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ndb-v0_19_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndb-v0_19_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ndb-v0_19_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}