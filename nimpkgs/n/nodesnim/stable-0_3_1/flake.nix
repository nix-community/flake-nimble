{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-stable-0_3_1.flake = false;
  inputs.src-nodesnim-stable-0_3_1.type = "github";
  inputs.src-nodesnim-stable-0_3_1.owner = "Ethosa";
  inputs.src-nodesnim-stable-0_3_1.repo = "nodesnim";
  inputs.src-nodesnim-stable-0_3_1.ref = "refs/tags/stable-0.3.1";
  
  outputs = { self, nixpkgs, src-nodesnim-stable-0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-stable-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-stable-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}