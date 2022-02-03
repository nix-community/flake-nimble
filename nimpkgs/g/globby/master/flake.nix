{
  description = ''Glob pattern matching for Nim.'';
  inputs.src-globby-master.flake = false;
  inputs.src-globby-master.type = "github";
  inputs.src-globby-master.owner = "treeform";
  inputs.src-globby-master.repo = "globby";
  inputs.src-globby-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-globby-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-globby-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-globby-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}