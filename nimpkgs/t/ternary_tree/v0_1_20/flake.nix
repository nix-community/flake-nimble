{
  description = ''Structural sharing data structure of lists and maps.'';
  inputs.src-ternary_tree-v0_1_20.flake = false;
  inputs.src-ternary_tree-v0_1_20.type = "github";
  inputs.src-ternary_tree-v0_1_20.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_20.repo = "ternary-tree";
  inputs.src-ternary_tree-v0_1_20.ref = "refs/tags/v0.1.20";
  
  outputs = { self, nixpkgs, src-ternary_tree-v0_1_20, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-v0_1_20;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ternary_tree-v0_1_20"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}