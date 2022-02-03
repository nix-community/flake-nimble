{
  description = ''Nim ORM.'';
  inputs.src-norm-2_3_3.flake = false;
  inputs.src-norm-2_3_3.type = "github";
  inputs.src-norm-2_3_3.owner = "moigagoo";
  inputs.src-norm-2_3_3.repo = "norm";
  inputs.src-norm-2_3_3.ref = "refs/tags/2.3.3";
  
  
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

  outputs = { self, nixpkgs, src-norm-2_3_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-2_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-2_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}