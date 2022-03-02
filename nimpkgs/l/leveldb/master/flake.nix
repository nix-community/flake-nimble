{
  description = ''LevelDB bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-leveldb-master.flake = false;
  inputs.src-leveldb-master.type = "github";
  inputs.src-leveldb-master.owner = "zielmicha";
  inputs.src-leveldb-master.repo = "leveldb.nim";
  inputs.src-leveldb-master.ref = "refs/heads/master";
  inputs.src-leveldb-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-leveldb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-leveldb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-leveldb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}