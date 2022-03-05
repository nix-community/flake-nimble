{
  description = ''Static GLFW for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-staticglfw-4_1_1.flake = false;
  inputs.src-staticglfw-4_1_1.type = "github";
  inputs.src-staticglfw-4_1_1.owner = "treeform";
  inputs.src-staticglfw-4_1_1.repo = "staticglfw";
  inputs.src-staticglfw-4_1_1.ref = "refs/tags/4.1.1";
  inputs.src-staticglfw-4_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."opengl".type = "github";
  inputs."opengl".owner = "riinr";
  inputs."opengl".repo = "flake-nimble";
  inputs."opengl".ref = "flake-pinning";
  inputs."opengl".dir = "nimpkgs/o/opengl";
  inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-staticglfw-4_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-staticglfw-4_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-staticglfw-4_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}