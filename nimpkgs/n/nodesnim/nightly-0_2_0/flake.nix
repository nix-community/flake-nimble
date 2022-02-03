{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_2_0.flake = false;
  inputs.src-nodesnim-nightly-0_2_0.type = "github";
  inputs.src-nodesnim-nightly-0_2_0.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_2_0.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_2_0.ref = "refs/tags/nightly-0.2.0";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}