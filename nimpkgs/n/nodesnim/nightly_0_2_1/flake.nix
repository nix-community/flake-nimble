{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly_0_2_1.flake = false;
  inputs.src-nodesnim-nightly_0_2_1.type = "github";
  inputs.src-nodesnim-nightly_0_2_1.owner = "Ethosa";
  inputs.src-nodesnim-nightly_0_2_1.repo = "nodesnim";
  inputs.src-nodesnim-nightly_0_2_1.ref = "refs/tags/nightly_0.2.1";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly_0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly_0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly_0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}