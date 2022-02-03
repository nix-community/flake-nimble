{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-v0_0_1.flake = false;
  inputs.src-nodesnim-v0_0_1.type = "github";
  inputs.src-nodesnim-v0_0_1.owner = "Ethosa";
  inputs.src-nodesnim-v0_0_1.repo = "nodesnim";
  inputs.src-nodesnim-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, src-nodesnim-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}