{
  description = ''Structural sharing data structure of lists and maps.'';
  inputs.src-ternary_tree-master.flake = false;
  inputs.src-ternary_tree-master.type = "github";
  inputs.src-ternary_tree-master.owner = "calcit-lang";
  inputs.src-ternary_tree-master.repo = "ternary-tree";
  inputs.src-ternary_tree-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ternary_tree-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ternary_tree-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}