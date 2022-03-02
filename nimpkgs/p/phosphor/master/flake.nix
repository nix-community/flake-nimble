{
  description = ''eaiser use of OpenGL and GLSL shaders'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-Phosphor-master.flake = false;
  inputs.src-Phosphor-master.type = "github";
  inputs.src-Phosphor-master.owner = "barcharcraz";
  inputs.src-Phosphor-master.repo = "Phosphor";
  inputs.src-Phosphor-master.ref = "refs/heads/master";
  inputs.src-Phosphor-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."opengl".type = "github";
  # inputs."opengl".owner = "riinr";
  # inputs."opengl".repo = "flake-nimble";
  # inputs."opengl".ref = "flake-pinning";
  # inputs."opengl".dir = "nimpkgs/o/opengl";
  # inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-Phosphor-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Phosphor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-Phosphor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}