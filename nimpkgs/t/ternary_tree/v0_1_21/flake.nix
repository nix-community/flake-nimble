{
  description = ''Structural sharing data structure of lists and maps.'';
  inputs.src-ternary_tree-v0_1_21.flake = false;
  inputs.src-ternary_tree-v0_1_21.type = "github";
  inputs.src-ternary_tree-v0_1_21.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_21.repo = "ternary-tree";
  inputs.src-ternary_tree-v0_1_21.ref = "refs/tags/v0.1.21";
  
  outputs = { self, nixpkgs, src-ternary_tree-v0_1_21, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-v0_1_21;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ternary_tree-v0_1_21"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}