{
  description = ''Nim ORM.'';
  inputs.src-norm-2_3_1.flake = false;
  inputs.src-norm-2_3_1.type = "github";
  inputs.src-norm-2_3_1.owner = "moigagoo";
  inputs.src-norm-2_3_1.repo = "norm";
  inputs.src-norm-2_3_1.ref = "refs/tags/2.3.1";
  
  
  inputs."ndb".url = "path:../../../n/ndb";
  inputs."ndb".type = "github";
  inputs."ndb".owner = "riinr";
  inputs."ndb".repo = "flake-nimble";
  inputs."ndb".ref = "flake-pinning";
  inputs."ndb".dir = "nimpkgs/n/ndb";

  
  inputs."nimibook".url = "path:../../../n/nimibook";
  inputs."nimibook".type = "github";
  inputs."nimibook".owner = "riinr";
  inputs."nimibook".repo = "flake-nimble";
  inputs."nimibook".ref = "flake-pinning";
  inputs."nimibook".dir = "nimpkgs/n/nimibook";

  outputs = { self, nixpkgs, src-norm-2_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-2_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-2_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}