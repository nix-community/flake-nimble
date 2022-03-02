{
  description = ''Nim ORM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-norm-1_0_5.flake = false;
  inputs.src-norm-1_0_5.type = "github";
  inputs.src-norm-1_0_5.owner = "moigagoo";
  inputs.src-norm-1_0_5.repo = "norm";
  inputs.src-norm-1_0_5.ref = "refs/tags/1.0.5";
  inputs.src-norm-1_0_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-norm-1_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-norm-1_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}