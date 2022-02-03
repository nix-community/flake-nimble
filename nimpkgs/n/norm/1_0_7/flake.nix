{
  description = ''Nim ORM.'';
  inputs.src-norm-1_0_7.flake = false;
  inputs.src-norm-1_0_7.type = "github";
  inputs.src-norm-1_0_7.owner = "moigagoo";
  inputs.src-norm-1_0_7.repo = "norm";
  inputs.src-norm-1_0_7.ref = "refs/tags/1.0.7";
  
  outputs = { self, nixpkgs, src-norm-1_0_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-1_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}