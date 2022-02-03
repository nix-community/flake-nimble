{
  description = ''Nim ORM.'';
  inputs.src-norm-1_0_16.flake = false;
  inputs.src-norm-1_0_16.type = "github";
  inputs.src-norm-1_0_16.owner = "moigagoo";
  inputs.src-norm-1_0_16.repo = "norm";
  inputs.src-norm-1_0_16.ref = "refs/tags/1.0.16";
  
  
  inputs."ndb".url = "path:../../../n/ndb";
  inputs."ndb".type = "github";
  inputs."ndb".owner = "riinr";
  inputs."ndb".repo = "flake-nimble";
  inputs."ndb".ref = "flake-pinning";
  inputs."ndb".dir = "nimpkgs/n/ndb";

  outputs = { self, nixpkgs, src-norm-1_0_16, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_16;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-1_0_16"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}