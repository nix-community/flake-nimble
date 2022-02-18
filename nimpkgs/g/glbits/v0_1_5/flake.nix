{
  description = ''A light interface and selection of utilities for working with OpenGL and SDL2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-glbits-v0_1_5.flake = false;
  inputs.src-glbits-v0_1_5.type = "github";
  inputs.src-glbits-v0_1_5.owner = "rlipsc";
  inputs.src-glbits-v0_1_5.repo = "glbits";
  inputs.src-glbits-v0_1_5.ref = "refs/tags/v0.1.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-glbits-v0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glbits-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-glbits-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}