{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nodesnim-nightly-0_3_2d.flake = false;
  inputs.src-nodesnim-nightly-0_3_2d.type = "github";
  inputs.src-nodesnim-nightly-0_3_2d.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_3_2d.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_3_2d.ref = "refs/tags/nightly-0.3.2d";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nodesnim-nightly-0_3_2d, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_3_2d;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-nightly-0_3_2d"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}