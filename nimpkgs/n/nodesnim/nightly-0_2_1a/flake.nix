{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_2_1a.flake = false;
  inputs.src-nodesnim-nightly-0_2_1a.type = "github";
  inputs.src-nodesnim-nightly-0_2_1a.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_2_1a.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_2_1a.ref = "refs/tags/nightly-0.2.1a";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly-0_2_1a, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_2_1a;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_2_1a"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}