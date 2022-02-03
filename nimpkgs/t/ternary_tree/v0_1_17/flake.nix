{
  description = ''Structural sharing data structure of lists and maps.'';
  inputs.src-ternary_tree-v0_1_17.flake = false;
  inputs.src-ternary_tree-v0_1_17.type = "github";
  inputs.src-ternary_tree-v0_1_17.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_17.repo = "ternary-tree";
  inputs.src-ternary_tree-v0_1_17.ref = "refs/tags/v0.1.17";
  
  outputs = { self, nixpkgs, src-ternary_tree-v0_1_17, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-v0_1_17;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ternary_tree-v0_1_17"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}