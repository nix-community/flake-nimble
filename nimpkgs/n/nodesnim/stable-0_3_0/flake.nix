{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nodesnim-stable-0_3_0.flake = false;
  inputs.src-nodesnim-stable-0_3_0.type = "github";
  inputs.src-nodesnim-stable-0_3_0.owner = "Ethosa";
  inputs.src-nodesnim-stable-0_3_0.repo = "nodesnim";
  inputs.src-nodesnim-stable-0_3_0.ref = "refs/tags/stable-0.3.0";
  inputs.src-nodesnim-stable-0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nodesnim-stable-0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-stable-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-stable-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}