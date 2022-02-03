{
  description = ''A thin SQLite wrapper with proper type safety'';
  inputs.src-tiny_sqlite-master.flake = false;
  inputs.src-tiny_sqlite-master.type = "github";
  inputs.src-tiny_sqlite-master.owner = "GULPF";
  inputs.src-tiny_sqlite-master.repo = "tiny_sqlite";
  inputs.src-tiny_sqlite-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tiny_sqlite-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tiny_sqlite-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tiny_sqlite-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}