{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-stable-0_2_4.flake = false;
  inputs.src-nodesnim-stable-0_2_4.type = "github";
  inputs.src-nodesnim-stable-0_2_4.owner = "Ethosa";
  inputs.src-nodesnim-stable-0_2_4.repo = "nodesnim";
  inputs.src-nodesnim-stable-0_2_4.ref = "refs/tags/stable-0.2.4";
  
  outputs = { self, nixpkgs, src-nodesnim-stable-0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-stable-0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-stable-0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}