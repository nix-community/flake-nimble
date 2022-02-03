{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_2_4b.flake = false;
  inputs.src-nodesnim-nightly-0_2_4b.type = "github";
  inputs.src-nodesnim-nightly-0_2_4b.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_2_4b.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_2_4b.ref = "refs/tags/nightly-0.2.4b";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly-0_2_4b, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_2_4b;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_2_4b"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}