{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_4_1a.flake = false;
  inputs.src-nodesnim-nightly-0_4_1a.type = "github";
  inputs.src-nodesnim-nightly-0_4_1a.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_4_1a.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_4_1a.ref = "refs/tags/nightly-0.4.1a";
  
  
  inputs."compiler".url = "path:../../../c/compiler";
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-nodesnim-nightly-0_4_1a, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_4_1a;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_4_1a"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}