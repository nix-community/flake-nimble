{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nodesnim-nightly-0_2_2a.flake = false;
  inputs.src-nodesnim-nightly-0_2_2a.type = "github";
  inputs.src-nodesnim-nightly-0_2_2a.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_2_2a.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_2_2a.ref = "refs/tags/nightly-0.2.2a";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nodesnim-nightly-0_2_2a, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_2_2a;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-nightly-0_2_2a"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}