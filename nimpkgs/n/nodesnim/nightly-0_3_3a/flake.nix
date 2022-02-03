{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_3_3a.flake = false;
  inputs.src-nodesnim-nightly-0_3_3a.type = "github";
  inputs.src-nodesnim-nightly-0_3_3a.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_3_3a.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_3_3a.ref = "refs/tags/nightly-0.3.3a";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly-0_3_3a, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_3_3a;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_3_3a"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}