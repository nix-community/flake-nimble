{
  description = ''Nim ORM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-norm-1_0_1.flake = false;
  inputs.src-norm-1_0_1.type = "github";
  inputs.src-norm-1_0_1.owner = "moigagoo";
  inputs.src-norm-1_0_1.repo = "norm";
  inputs.src-norm-1_0_1.ref = "refs/tags/1.0.1";
  inputs.src-norm-1_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-norm-1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-norm-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}