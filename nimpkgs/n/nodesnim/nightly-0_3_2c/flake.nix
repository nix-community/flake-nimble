{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_3_2c.flake = false;
  inputs.src-nodesnim-nightly-0_3_2c.type = "github";
  inputs.src-nodesnim-nightly-0_3_2c.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_3_2c.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_3_2c.ref = "refs/tags/nightly-0.3.2c";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly-0_3_2c, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_3_2c;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_3_2c"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}