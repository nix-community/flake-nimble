{
  description = ''Structural sharing data structure of lists and maps.'';
  inputs.src-ternary_tree-v0_1_27.flake = false;
  inputs.src-ternary_tree-v0_1_27.type = "github";
  inputs.src-ternary_tree-v0_1_27.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_27.repo = "ternary-tree";
  inputs.src-ternary_tree-v0_1_27.ref = "refs/tags/v0.1.27";
  
  outputs = { self, nixpkgs, src-ternary_tree-v0_1_27, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-v0_1_27;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ternary_tree-v0_1_27"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}