{
  description = ''Nim ORM.'';
  inputs.src-norm-1_0_17.flake = false;
  inputs.src-norm-1_0_17.type = "github";
  inputs.src-norm-1_0_17.owner = "moigagoo";
  inputs.src-norm-1_0_17.repo = "norm";
  inputs.src-norm-1_0_17.ref = "refs/tags/1.0.17";
  
  
  inputs."ndb".url = "path:../../../n/ndb";
  inputs."ndb".type = "github";
  inputs."ndb".owner = "riinr";
  inputs."ndb".repo = "flake-nimble";
  inputs."ndb".ref = "flake-pinning";
  inputs."ndb".dir = "nimpkgs/n/ndb";

  outputs = { self, nixpkgs, src-norm-1_0_17, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_17;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-1_0_17"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}