{
  description = ''Command line tools for Prologue.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-logue-v0_2_2.flake = false;
  inputs.src-logue-v0_2_2.type = "github";
  inputs.src-logue-v0_2_2.owner = "planety";
  inputs.src-logue-v0_2_2.repo = "logue";
  inputs.src-logue-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-logue-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-logue-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-logue-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}