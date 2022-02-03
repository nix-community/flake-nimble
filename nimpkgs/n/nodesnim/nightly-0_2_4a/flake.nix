{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_2_4a.flake = false;
  inputs.src-nodesnim-nightly-0_2_4a.type = "github";
  inputs.src-nodesnim-nightly-0_2_4a.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_2_4a.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_2_4a.ref = "refs/tags/nightly-0.2.4a";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly-0_2_4a, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_2_4a;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_2_4a"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}