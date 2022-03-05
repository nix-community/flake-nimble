{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nodesnim-stable-0_4_2.flake = false;
  inputs.src-nodesnim-stable-0_4_2.type = "github";
  inputs.src-nodesnim-stable-0_4_2.owner = "Ethosa";
  inputs.src-nodesnim-stable-0_4_2.repo = "nodesnim";
  inputs.src-nodesnim-stable-0_4_2.ref = "refs/tags/stable-0.4.2";
  inputs.src-nodesnim-stable-0_4_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";
  inputs."compiler".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nodesnim-stable-0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-stable-0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-stable-0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}