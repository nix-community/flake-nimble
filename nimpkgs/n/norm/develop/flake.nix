{
  description = ''Nim ORM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-norm-develop.flake = false;
  inputs.src-norm-develop.type = "github";
  inputs.src-norm-develop.owner = "moigagoo";
  inputs.src-norm-develop.repo = "norm";
  inputs.src-norm-develop.ref = "refs/heads/develop";
  inputs.src-norm-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."ndb".type = "github";
  # inputs."ndb".owner = "riinr";
  # inputs."ndb".repo = "flake-nimble";
  # inputs."ndb".ref = "flake-pinning";
  # inputs."ndb".dir = "nimpkgs/n/ndb";
  # inputs."ndb".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ndb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-norm-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-norm-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}