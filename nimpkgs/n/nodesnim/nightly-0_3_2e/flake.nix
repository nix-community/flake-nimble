{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_3_2e.flake = false;
  inputs.src-nodesnim-nightly-0_3_2e.type = "github";
  inputs.src-nodesnim-nightly-0_3_2e.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_3_2e.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_3_2e.ref = "refs/tags/nightly-0.3.2e";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly-0_3_2e, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_3_2e;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_3_2e"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}