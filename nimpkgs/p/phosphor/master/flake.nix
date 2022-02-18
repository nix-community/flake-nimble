{
  description = ''eaiser use of OpenGL and GLSL shaders'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-phosphor-master.flake = false;
  inputs.src-phosphor-master.type = "github";
  inputs.src-phosphor-master.owner = "barcharcraz";
  inputs.src-phosphor-master.repo = "Phosphor";
  inputs.src-phosphor-master.ref = "refs/heads/master";
  
  
  inputs."opengl".type = "github";
  inputs."opengl".owner = "riinr";
  inputs."opengl".repo = "flake-nimble";
  inputs."opengl".ref = "flake-pinning";
  inputs."opengl".dir = "nimpkgs/o/opengl";

  outputs = { self, nixpkgs, flakeNimbleLib, src-phosphor-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-phosphor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-phosphor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}