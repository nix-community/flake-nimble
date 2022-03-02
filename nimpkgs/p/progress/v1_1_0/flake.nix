{
  description = ''A simple progress bar for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-progress-v1_1_0.flake = false;
  inputs.src-progress-v1_1_0.type = "github";
  inputs.src-progress-v1_1_0.owner = "euantorano";
  inputs.src-progress-v1_1_0.repo = "progress.nim";
  inputs.src-progress-v1_1_0.ref = "refs/tags/v1.1.0";
  inputs.src-progress-v1_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-progress-v1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-progress-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-progress-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}