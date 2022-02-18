{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nodesnim-01_09_21_1_24_0_0_6.flake = false;
  inputs.src-nodesnim-01_09_21_1_24_0_0_6.type = "github";
  inputs.src-nodesnim-01_09_21_1_24_0_0_6.owner = "Ethosa";
  inputs.src-nodesnim-01_09_21_1_24_0_0_6.repo = "nodesnim";
  inputs.src-nodesnim-01_09_21_1_24_0_0_6.ref = "refs/tags/01.09.21_1.24_0.0.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nodesnim-01_09_21_1_24_0_0_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-01_09_21_1_24_0_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-01_09_21_1_24_0_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}