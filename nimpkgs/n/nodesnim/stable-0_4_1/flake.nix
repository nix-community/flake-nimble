{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nodesnim-stable-0_4_1.flake = false;
  inputs.src-nodesnim-stable-0_4_1.type = "github";
  inputs.src-nodesnim-stable-0_4_1.owner = "Ethosa";
  inputs.src-nodesnim-stable-0_4_1.repo = "nodesnim";
  inputs.src-nodesnim-stable-0_4_1.ref = "refs/tags/stable-0.4.1";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nodesnim-stable-0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-stable-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-stable-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}