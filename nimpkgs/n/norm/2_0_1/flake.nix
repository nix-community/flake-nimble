{
  description = ''Nim ORM.'';
  inputs.src-norm-2_0_1.flake = false;
  inputs.src-norm-2_0_1.type = "github";
  inputs.src-norm-2_0_1.owner = "moigagoo";
  inputs.src-norm-2_0_1.repo = "norm";
  inputs.src-norm-2_0_1.ref = "refs/tags/2.0.1";
  
  
  inputs."ndb".url = "path:../../../n/ndb";
  inputs."ndb".type = "github";
  inputs."ndb".owner = "riinr";
  inputs."ndb".repo = "flake-nimble";
  inputs."ndb".ref = "flake-pinning";
  inputs."ndb".dir = "nimpkgs/n/ndb";

  outputs = { self, nixpkgs, src-norm-2_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}