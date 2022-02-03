{
  description = ''Nim ORM.'';
  inputs.src-norm-1_0_8.flake = false;
  inputs.src-norm-1_0_8.type = "github";
  inputs.src-norm-1_0_8.owner = "moigagoo";
  inputs.src-norm-1_0_8.repo = "norm";
  inputs.src-norm-1_0_8.ref = "refs/tags/1.0.8";
  
  outputs = { self, nixpkgs, src-norm-1_0_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-1_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}