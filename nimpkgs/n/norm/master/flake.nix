{
  description = ''Nim ORM.'';
  inputs.src-norm-master.flake = false;
  inputs.src-norm-master.type = "github";
  inputs.src-norm-master.owner = "moigagoo";
  inputs.src-norm-master.repo = "norm";
  inputs.src-norm-master.ref = "refs/heads/master";
  
  
  inputs."ndb".type = "github";
  inputs."ndb".owner = "riinr";
  inputs."ndb".repo = "flake-nimble";
  inputs."ndb".ref = "flake-pinning";
  inputs."ndb".dir = "nimpkgs/n/ndb";

  outputs = { self, nixpkgs, src-norm-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}