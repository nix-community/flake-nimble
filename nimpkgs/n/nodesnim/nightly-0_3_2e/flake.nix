{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nodesnim-nightly-0_3_2e.flake = false;
  inputs.src-nodesnim-nightly-0_3_2e.type = "github";
  inputs.src-nodesnim-nightly-0_3_2e.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_3_2e.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_3_2e.ref = "refs/tags/nightly-0.3.2e";
  inputs.src-nodesnim-nightly-0_3_2e.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nodesnim-nightly-0_3_2e, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_3_2e;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-nightly-0_3_2e"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}