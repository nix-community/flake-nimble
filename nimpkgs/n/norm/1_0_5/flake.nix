{
  description = ''Nim ORM.'';
  inputs.src-norm-1_0_5.flake = false;
  inputs.src-norm-1_0_5.type = "github";
  inputs.src-norm-1_0_5.owner = "moigagoo";
  inputs.src-norm-1_0_5.repo = "norm";
  inputs.src-norm-1_0_5.ref = "refs/tags/1.0.5";
  
  outputs = { self, nixpkgs, src-norm-1_0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-1_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}