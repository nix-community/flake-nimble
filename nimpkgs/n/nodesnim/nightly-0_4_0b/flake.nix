{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nodesnim-nightly-0_4_0b.flake = false;
  inputs.src-nodesnim-nightly-0_4_0b.type = "github";
  inputs.src-nodesnim-nightly-0_4_0b.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_4_0b.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_4_0b.ref = "refs/tags/nightly-0.4.0b";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nodesnim-nightly-0_4_0b, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_4_0b;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-nightly-0_4_0b"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}