{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nodesnim-nightly-0_4_0c.flake = false;
  inputs.src-nodesnim-nightly-0_4_0c.type = "github";
  inputs.src-nodesnim-nightly-0_4_0c.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_4_0c.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_4_0c.ref = "refs/tags/nightly-0.4.0c";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nodesnim-nightly-0_4_0c, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_4_0c;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-nightly-0_4_0c"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}