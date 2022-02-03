{
  description = ''Nim ORM.'';
  inputs.src-norm-1_0_0.flake = false;
  inputs.src-norm-1_0_0.type = "github";
  inputs.src-norm-1_0_0.owner = "moigagoo";
  inputs.src-norm-1_0_0.repo = "norm";
  inputs.src-norm-1_0_0.ref = "refs/tags/1.0.0";
  
  
  inputs."chronicles".url = "path:../../../c/chronicles";
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";

  outputs = { self, nixpkgs, src-norm-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}