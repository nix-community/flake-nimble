{
  description = ''Nim ORM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-norm-1_0_0.flake = false;
  inputs.src-norm-1_0_0.type = "github";
  inputs.src-norm-1_0_0.owner = "moigagoo";
  inputs.src-norm-1_0_0.repo = "norm";
  inputs.src-norm-1_0_0.ref = "refs/tags/1.0.0";
  
  
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";

  outputs = { self, nixpkgs, flakeNimbleLib, src-norm-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-norm-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}