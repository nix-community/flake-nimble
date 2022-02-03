{
  description = ''Nim ORM.'';
  inputs.src-norm-1_0_10.flake = false;
  inputs.src-norm-1_0_10.type = "github";
  inputs.src-norm-1_0_10.owner = "moigagoo";
  inputs.src-norm-1_0_10.repo = "norm";
  inputs.src-norm-1_0_10.ref = "refs/tags/1.0.10";
  
  outputs = { self, nixpkgs, src-norm-1_0_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-1_0_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}