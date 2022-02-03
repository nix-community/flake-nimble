{
  description = ''Nim ORM.'';
  inputs.src-norm-1_0_1.flake = false;
  inputs.src-norm-1_0_1.type = "github";
  inputs.src-norm-1_0_1.owner = "moigagoo";
  inputs.src-norm-1_0_1.repo = "norm";
  inputs.src-norm-1_0_1.ref = "refs/tags/1.0.1";
  
  
  inputs."chronicles".url = "path:../../../c/chronicles";
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";

  outputs = { self, nixpkgs, src-norm-1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}