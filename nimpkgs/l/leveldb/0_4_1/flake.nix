{
  description = ''LevelDB bindings'';
  inputs.src-leveldb-0_4_1.flake = false;
  inputs.src-leveldb-0_4_1.type = "github";
  inputs.src-leveldb-0_4_1.owner = "zielmicha";
  inputs.src-leveldb-0_4_1.repo = "leveldb.nim";
  inputs.src-leveldb-0_4_1.ref = "refs/tags/0.4.1";
  
  outputs = { self, nixpkgs, src-leveldb-0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-leveldb-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-leveldb-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}