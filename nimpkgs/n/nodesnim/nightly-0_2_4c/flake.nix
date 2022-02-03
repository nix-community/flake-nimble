{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_2_4c.flake = false;
  inputs.src-nodesnim-nightly-0_2_4c.type = "github";
  inputs.src-nodesnim-nightly-0_2_4c.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_2_4c.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_2_4c.ref = "refs/tags/nightly-0.2.4c";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly-0_2_4c, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_2_4c;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_2_4c"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}