{
  description = ''LevelDB bindings'';
  inputs.src-leveldb-master.flake = false;
  inputs.src-leveldb-master.type = "github";
  inputs.src-leveldb-master.owner = "zielmicha";
  inputs.src-leveldb-master.repo = "leveldb.nim";
  inputs.src-leveldb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-leveldb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-leveldb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-leveldb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}