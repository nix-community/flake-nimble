{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nodesnim-stable.flake = false;
  inputs.src-nodesnim-stable.type = "github";
  inputs.src-nodesnim-stable.owner = "Ethosa";
  inputs.src-nodesnim-stable.repo = "nodesnim";
  inputs.src-nodesnim-stable.ref = "refs/tags/stable";
  inputs.src-nodesnim-stable.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nodesnim-stable, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-stable;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-stable"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}