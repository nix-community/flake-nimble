{
  description = ''A db_sqlite fork with a proper typing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ndb-v0_19_9.flake = false;
  inputs.src-ndb-v0_19_9.type = "github";
  inputs.src-ndb-v0_19_9.owner = "xzfc";
  inputs.src-ndb-v0_19_9.repo = "ndb.nim";
  inputs.src-ndb-v0_19_9.ref = "refs/tags/v0.19.9";
  inputs.src-ndb-v0_19_9.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ndb-v0_19_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndb-v0_19_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ndb-v0_19_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}