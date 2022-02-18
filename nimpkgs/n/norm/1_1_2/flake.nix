{
  description = ''Nim ORM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-norm-1_1_2.flake = false;
  inputs.src-norm-1_1_2.type = "github";
  inputs.src-norm-1_1_2.owner = "moigagoo";
  inputs.src-norm-1_1_2.repo = "norm";
  inputs.src-norm-1_1_2.ref = "refs/tags/1.1.2";
  
  
  inputs."ndb".type = "github";
  inputs."ndb".owner = "riinr";
  inputs."ndb".repo = "flake-nimble";
  inputs."ndb".ref = "flake-pinning";
  inputs."ndb".dir = "nimpkgs/n/ndb";

  outputs = { self, nixpkgs, flakeNimbleLib, src-norm-1_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-norm-1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}