{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_4_2b.flake = false;
  inputs.src-nodesnim-nightly-0_4_2b.type = "github";
  inputs.src-nodesnim-nightly-0_4_2b.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_4_2b.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_4_2b.ref = "refs/tags/nightly-0.4.2b";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-nodesnim-nightly-0_4_2b, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_4_2b;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_4_2b"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}