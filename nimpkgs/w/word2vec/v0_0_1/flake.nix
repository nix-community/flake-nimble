{
  description = ''Word2vec implemented in nim.'';
  inputs.src-word2vec-v0_0_1.flake = false;
  inputs.src-word2vec-v0_0_1.type = "github";
  inputs.src-word2vec-v0_0_1.owner = "treeform";
  inputs.src-word2vec-v0_0_1.repo = "word2vec";
  inputs.src-word2vec-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, src-word2vec-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-word2vec-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-word2vec-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}