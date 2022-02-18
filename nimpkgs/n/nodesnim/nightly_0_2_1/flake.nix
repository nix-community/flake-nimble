{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nodesnim-nightly_0_2_1.flake = false;
  inputs.src-nodesnim-nightly_0_2_1.type = "github";
  inputs.src-nodesnim-nightly_0_2_1.owner = "Ethosa";
  inputs.src-nodesnim-nightly_0_2_1.repo = "nodesnim";
  inputs.src-nodesnim-nightly_0_2_1.ref = "refs/tags/nightly_0.2.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nodesnim-nightly_0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly_0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-nightly_0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}