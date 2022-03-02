{
  description = ''ForestDB is fast key-value storage engine that is based on a Hierarchical B+-Tree based Trie, or HB+-Trie.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-forestdb-master.flake = false;
  inputs.src-forestdb-master.type = "github";
  inputs.src-forestdb-master.owner = "nimscale";
  inputs.src-forestdb-master.repo = "forestdb";
  inputs.src-forestdb-master.ref = "refs/heads/master";
  inputs.src-forestdb-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-forestdb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-forestdb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-forestdb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}