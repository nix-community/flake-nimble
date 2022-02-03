{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_3_0c.flake = false;
  inputs.src-nodesnim-nightly-0_3_0c.type = "github";
  inputs.src-nodesnim-nightly-0_3_0c.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_3_0c.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_3_0c.ref = "refs/tags/nightly-0.3.0c";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly-0_3_0c, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_3_0c;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_3_0c"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}