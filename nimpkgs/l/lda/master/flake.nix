{
  description = ''Latent Dirichlet Allocation'';
  inputs.src-lda-master.flake = false;
  inputs.src-lda-master.type = "github";
  inputs.src-lda-master.owner = "andreaferretti";
  inputs.src-lda-master.repo = "lda";
  inputs.src-lda-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-lda-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lda-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lda-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}