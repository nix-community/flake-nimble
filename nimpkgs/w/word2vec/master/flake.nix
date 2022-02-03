{
  description = ''Word2vec implemented in nim.'';
  inputs.src-word2vec-master.flake = false;
  inputs.src-word2vec-master.type = "github";
  inputs.src-word2vec-master.owner = "treeform";
  inputs.src-word2vec-master.repo = "word2vec";
  inputs.src-word2vec-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-word2vec-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-word2vec-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-word2vec-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}