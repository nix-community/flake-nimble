{
  description = ''Nim ORM.'';
  inputs.src-norm-2_3_0.flake = false;
  inputs.src-norm-2_3_0.type = "github";
  inputs.src-norm-2_3_0.owner = "moigagoo";
  inputs.src-norm-2_3_0.repo = "norm";
  inputs.src-norm-2_3_0.ref = "refs/tags/2.3.0";
  
  
  inputs."ndb".type = "github";
  inputs."ndb".owner = "riinr";
  inputs."ndb".repo = "flake-nimble";
  inputs."ndb".ref = "flake-pinning";
  inputs."ndb".dir = "nimpkgs/n/ndb";

  outputs = { self, nixpkgs, src-norm-2_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-2_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-2_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}