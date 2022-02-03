{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-stable-0_3_0.flake = false;
  inputs.src-nodesnim-stable-0_3_0.type = "github";
  inputs.src-nodesnim-stable-0_3_0.owner = "Ethosa";
  inputs.src-nodesnim-stable-0_3_0.repo = "nodesnim";
  inputs.src-nodesnim-stable-0_3_0.ref = "refs/tags/stable-0.3.0";
  
  outputs = { self, nixpkgs, src-nodesnim-stable-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-stable-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-stable-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}