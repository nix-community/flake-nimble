{
  description = ''Nim ORM.'';
  inputs.src-norm-develop.flake = false;
  inputs.src-norm-develop.type = "github";
  inputs.src-norm-develop.owner = "moigagoo";
  inputs.src-norm-develop.repo = "norm";
  inputs.src-norm-develop.ref = "refs/heads/develop";
  
  
  inputs."ndb".type = "github";
  inputs."ndb".owner = "riinr";
  inputs."ndb".repo = "flake-nimble";
  inputs."ndb".ref = "flake-pinning";
  inputs."ndb".dir = "nimpkgs/n/ndb";

  outputs = { self, nixpkgs, src-norm-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}