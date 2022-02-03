{
  description = ''Nim ORM.'';
  inputs.src-norm-2_3_2.flake = false;
  inputs.src-norm-2_3_2.type = "github";
  inputs.src-norm-2_3_2.owner = "moigagoo";
  inputs.src-norm-2_3_2.repo = "norm";
  inputs.src-norm-2_3_2.ref = "refs/tags/2.3.2";
  
  
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

  outputs = { self, nixpkgs, src-norm-2_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-2_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-2_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}