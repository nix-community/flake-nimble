{
  description = ''Nim ORM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-norm-1_0_7.flake = false;
  inputs.src-norm-1_0_7.type = "github";
  inputs.src-norm-1_0_7.owner = "moigagoo";
  inputs.src-norm-1_0_7.repo = "norm";
  inputs.src-norm-1_0_7.ref = "refs/tags/1.0.7";
  inputs.src-norm-1_0_7.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-norm-1_0_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-norm-1_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}