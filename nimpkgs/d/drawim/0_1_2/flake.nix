{
  description = ''Simple library to draw stuff on a window'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-drawim-0_1_2.flake = false;
  inputs.src-drawim-0_1_2.type = "github";
  inputs.src-drawim-0_1_2.owner = "GabrielLasso";
  inputs.src-drawim-0_1_2.repo = "drawim";
  inputs.src-drawim-0_1_2.ref = "refs/tags/0.1.2";
  inputs.src-drawim-0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."staticglfw".type = "github";
  # inputs."staticglfw".owner = "riinr";
  # inputs."staticglfw".repo = "flake-nimble";
  # inputs."staticglfw".ref = "flake-pinning";
  # inputs."staticglfw".dir = "nimpkgs/s/staticglfw";
  # inputs."staticglfw".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."staticglfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."opengl".type = "github";
  # inputs."opengl".owner = "riinr";
  # inputs."opengl".repo = "flake-nimble";
  # inputs."opengl".ref = "flake-pinning";
  # inputs."opengl".dir = "nimpkgs/o/opengl";
  # inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."jscanvas".type = "github";
  # inputs."jscanvas".owner = "riinr";
  # inputs."jscanvas".repo = "flake-nimble";
  # inputs."jscanvas".ref = "flake-pinning";
  # inputs."jscanvas".dir = "nimpkgs/j/jscanvas";
  # inputs."jscanvas".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jscanvas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-drawim-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-drawim-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-drawim-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}