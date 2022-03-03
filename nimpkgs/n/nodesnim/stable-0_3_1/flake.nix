{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nodesnim-stable-0_3_1.flake = false;
  inputs.src-nodesnim-stable-0_3_1.type = "github";
  inputs.src-nodesnim-stable-0_3_1.owner = "Ethosa";
  inputs.src-nodesnim-stable-0_3_1.repo = "nodesnim";
  inputs.src-nodesnim-stable-0_3_1.ref = "refs/tags/stable-0.3.1";
  inputs.src-nodesnim-stable-0_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nodesnim-stable-0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-stable-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-stable-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}