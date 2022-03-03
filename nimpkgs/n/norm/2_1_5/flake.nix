{
  description = ''Nim ORM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-norm-2_1_5.flake = false;
  inputs.src-norm-2_1_5.type = "github";
  inputs.src-norm-2_1_5.owner = "moigagoo";
  inputs.src-norm-2_1_5.repo = "norm";
  inputs.src-norm-2_1_5.ref = "refs/tags/2.1.5";
  inputs.src-norm-2_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."ndb".type = "github";
  # inputs."ndb".owner = "riinr";
  # inputs."ndb".repo = "flake-nimble";
  # inputs."ndb".ref = "flake-pinning";
  # inputs."ndb".dir = "nimpkgs/n/ndb";
  # inputs."ndb".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ndb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-norm-2_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-2_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-norm-2_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}