{
  description = ''A safe, high-level, optimized OpenGL wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-aglet-0_4_3.flake = false;
  inputs.src-aglet-0_4_3.type = "github";
  inputs.src-aglet-0_4_3.owner = "liquid600pgm";
  inputs.src-aglet-0_4_3.repo = "aglet";
  inputs.src-aglet-0_4_3.ref = "refs/tags/0.4.3";
  inputs.src-aglet-0_4_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/liquid600pgm/nim-glm".type = "github";
  # inputs."https://github.com/liquid600pgm/nim-glm".owner = "riinr";
  # inputs."https://github.com/liquid600pgm/nim-glm".repo = "flake-nimble";
  # inputs."https://github.com/liquid600pgm/nim-glm".ref = "flake-pinning";
  # inputs."https://github.com/liquid600pgm/nim-glm".dir = "nimpkgs/h/https://github.com/liquid600pgm/nim-glm";
  # inputs."https://github.com/liquid600pgm/nim-glm".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/liquid600pgm/nim-glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/nimgl/glfw".type = "github";
  # inputs."https://github.com/nimgl/glfw".owner = "riinr";
  # inputs."https://github.com/nimgl/glfw".repo = "flake-nimble";
  # inputs."https://github.com/nimgl/glfw".ref = "flake-pinning";
  # inputs."https://github.com/nimgl/glfw".dir = "nimpkgs/h/https://github.com/nimgl/glfw";
  # inputs."https://github.com/nimgl/glfw".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/nimgl/glfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-aglet-0_4_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-aglet-0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-aglet-0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}