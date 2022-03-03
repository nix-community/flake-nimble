{
  description = ''Word2vec implemented in nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-word2vec-master.flake = false;
  inputs.src-word2vec-master.type = "github";
  inputs.src-word2vec-master.owner = "treeform";
  inputs.src-word2vec-master.repo = "word2vec";
  inputs.src-word2vec-master.ref = "refs/heads/master";
  inputs.src-word2vec-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-word2vec-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-word2vec-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-word2vec-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}