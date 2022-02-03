{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_3_2f.flake = false;
  inputs.src-nodesnim-nightly-0_3_2f.type = "github";
  inputs.src-nodesnim-nightly-0_3_2f.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_3_2f.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_3_2f.ref = "refs/tags/nightly-0.3.2f";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly-0_3_2f, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_3_2f;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_3_2f"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}