{
  description = ''LevelDB bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-leveldb-0_4_1.flake = false;
  inputs.src-leveldb-0_4_1.type = "github";
  inputs.src-leveldb-0_4_1.owner = "zielmicha";
  inputs.src-leveldb-0_4_1.repo = "leveldb.nim";
  inputs.src-leveldb-0_4_1.ref = "refs/tags/0.4.1";
  inputs.src-leveldb-0_4_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-leveldb-0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-leveldb-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-leveldb-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}