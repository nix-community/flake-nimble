{
  description = ''Latent Dirichlet Allocation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-lda-master.flake = false;
  inputs.src-lda-master.type = "github";
  inputs.src-lda-master.owner = "andreaferretti";
  inputs.src-lda-master.repo = "lda";
  inputs.src-lda-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lda-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lda-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lda-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}