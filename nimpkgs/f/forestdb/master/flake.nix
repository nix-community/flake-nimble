{
  description = ''ForestDB is fast key-value storage engine that is based on a Hierarchical B+-Tree based Trie, or HB+-Trie.'';
  inputs.src-forestdb-master.flake = false;
  inputs.src-forestdb-master.type = "github";
  inputs.src-forestdb-master.owner = "nimscale";
  inputs.src-forestdb-master.repo = "forestdb";
  inputs.src-forestdb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-forestdb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-forestdb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-forestdb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}