{
  description = ''Static GLFW for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-staticglfw-master.flake = false;
  inputs.src-staticglfw-master.type = "github";
  inputs.src-staticglfw-master.owner = "treeform";
  inputs.src-staticglfw-master.repo = "staticglfw";
  inputs.src-staticglfw-master.ref = "refs/heads/master";
  inputs.src-staticglfw-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."opengl".type = "github";
  # inputs."opengl".owner = "riinr";
  # inputs."opengl".repo = "flake-nimble";
  # inputs."opengl".ref = "flake-pinning";
  # inputs."opengl".dir = "nimpkgs/o/opengl";
  # inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-staticglfw-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-staticglfw-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-staticglfw-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}