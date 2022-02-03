{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_4_0a.flake = false;
  inputs.src-nodesnim-nightly-0_4_0a.type = "github";
  inputs.src-nodesnim-nightly-0_4_0a.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_4_0a.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_4_0a.ref = "refs/tags/nightly-0.4.0a";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly-0_4_0a, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_4_0a;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_4_0a"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}