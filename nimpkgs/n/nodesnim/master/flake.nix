{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-master.flake = false;
  inputs.src-nodesnim-master.type = "github";
  inputs.src-nodesnim-master.owner = "Ethosa";
  inputs.src-nodesnim-master.repo = "nodesnim";
  inputs.src-nodesnim-master.ref = "refs/heads/master";
  
  
  inputs."compiler".url = "path:../../../c/compiler";
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-nodesnim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}