{
  description = ''Nim ORM.'';
  inputs.src-norm-1_0_9.flake = false;
  inputs.src-norm-1_0_9.type = "github";
  inputs.src-norm-1_0_9.owner = "moigagoo";
  inputs.src-norm-1_0_9.repo = "norm";
  inputs.src-norm-1_0_9.ref = "refs/tags/1.0.9";
  
  outputs = { self, nixpkgs, src-norm-1_0_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-1_0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}