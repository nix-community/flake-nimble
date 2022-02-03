{
  description = ''Nim ORM.'';
  inputs.src-norm-1_0_13.flake = false;
  inputs.src-norm-1_0_13.type = "github";
  inputs.src-norm-1_0_13.owner = "moigagoo";
  inputs.src-norm-1_0_13.repo = "norm";
  inputs.src-norm-1_0_13.ref = "refs/tags/1.0.13";
  
  
  inputs."ndb".url = "path:../../../n/ndb";
  inputs."ndb".type = "github";
  inputs."ndb".owner = "riinr";
  inputs."ndb".repo = "flake-nimble";
  inputs."ndb".ref = "flake-pinning";
  inputs."ndb".dir = "nimpkgs/n/ndb";

  outputs = { self, nixpkgs, src-norm-1_0_13, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_13;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-1_0_13"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}