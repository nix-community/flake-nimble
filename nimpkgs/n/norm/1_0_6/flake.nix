{
  description = ''Nim ORM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-norm-1_0_6.flake = false;
  inputs.src-norm-1_0_6.type = "github";
  inputs.src-norm-1_0_6.owner = "moigagoo";
  inputs.src-norm-1_0_6.repo = "norm";
  inputs.src-norm-1_0_6.ref = "refs/tags/1.0.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-norm-1_0_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-norm-1_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}