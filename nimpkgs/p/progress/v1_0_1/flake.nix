{
  description = ''A simple progress bar for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-progress-v1_0_1.flake = false;
  inputs.src-progress-v1_0_1.type = "github";
  inputs.src-progress-v1_0_1.owner = "euantorano";
  inputs.src-progress-v1_0_1.repo = "progress.nim";
  inputs.src-progress-v1_0_1.ref = "refs/tags/v1.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-progress-v1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-progress-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-progress-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}