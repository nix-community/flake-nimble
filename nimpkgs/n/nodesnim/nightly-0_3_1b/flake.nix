{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nodesnim-nightly-0_3_1b.flake = false;
  inputs.src-nodesnim-nightly-0_3_1b.type = "github";
  inputs.src-nodesnim-nightly-0_3_1b.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_3_1b.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_3_1b.ref = "refs/tags/nightly-0.3.1b";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nodesnim-nightly-0_3_1b, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_3_1b;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-nightly-0_3_1b"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}