{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_3_2d.flake = false;
  inputs.src-nodesnim-nightly-0_3_2d.type = "github";
  inputs.src-nodesnim-nightly-0_3_2d.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_3_2d.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_3_2d.ref = "refs/tags/nightly-0.3.2d";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly-0_3_2d, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_3_2d;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_3_2d"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}