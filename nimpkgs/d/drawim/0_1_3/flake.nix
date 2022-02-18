{
  description = ''Simple library to draw stuff on a window'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-drawim-0_1_3.flake = false;
  inputs.src-drawim-0_1_3.type = "github";
  inputs.src-drawim-0_1_3.owner = "GabrielLasso";
  inputs.src-drawim-0_1_3.repo = "drawim";
  inputs.src-drawim-0_1_3.ref = "refs/tags/0.1.3";
  
  
  inputs."staticglfw".type = "github";
  inputs."staticglfw".owner = "riinr";
  inputs."staticglfw".repo = "flake-nimble";
  inputs."staticglfw".ref = "flake-pinning";
  inputs."staticglfw".dir = "nimpkgs/s/staticglfw";

  
  inputs."opengl".type = "github";
  inputs."opengl".owner = "riinr";
  inputs."opengl".repo = "flake-nimble";
  inputs."opengl".ref = "flake-pinning";
  inputs."opengl".dir = "nimpkgs/o/opengl";

  
  inputs."jscanvas".type = "github";
  inputs."jscanvas".owner = "riinr";
  inputs."jscanvas".repo = "flake-nimble";
  inputs."jscanvas".ref = "flake-pinning";
  inputs."jscanvas".dir = "nimpkgs/j/jscanvas";

  outputs = { self, nixpkgs, flakeNimbleLib, src-drawim-0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-drawim-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-drawim-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}