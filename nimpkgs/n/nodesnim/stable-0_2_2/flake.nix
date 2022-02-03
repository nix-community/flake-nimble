{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-stable-0_2_2.flake = false;
  inputs.src-nodesnim-stable-0_2_2.type = "github";
  inputs.src-nodesnim-stable-0_2_2.owner = "Ethosa";
  inputs.src-nodesnim-stable-0_2_2.repo = "nodesnim";
  inputs.src-nodesnim-stable-0_2_2.ref = "refs/tags/stable-0.2.2";
  
  outputs = { self, nixpkgs, src-nodesnim-stable-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-stable-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-stable-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}