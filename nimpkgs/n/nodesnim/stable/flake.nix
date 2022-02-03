{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-stable.flake = false;
  inputs.src-nodesnim-stable.type = "github";
  inputs.src-nodesnim-stable.owner = "Ethosa";
  inputs.src-nodesnim-stable.repo = "nodesnim";
  inputs.src-nodesnim-stable.ref = "refs/tags/stable";
  
  outputs = { self, nixpkgs, src-nodesnim-stable, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-stable;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-stable"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}