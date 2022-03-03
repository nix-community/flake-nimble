{
  description = ''A db_sqlite fork with a proper typing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ndb-v0_19_3.flake = false;
  inputs.src-ndb-v0_19_3.type = "github";
  inputs.src-ndb-v0_19_3.owner = "xzfc";
  inputs.src-ndb-v0_19_3.repo = "ndb.nim";
  inputs.src-ndb-v0_19_3.ref = "refs/tags/v0.19.3";
  inputs.src-ndb-v0_19_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ndb-v0_19_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndb-v0_19_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ndb-v0_19_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}