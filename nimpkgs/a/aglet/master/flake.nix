{
  description = ''A safe, high-level, optimized OpenGL wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-aglet-master.flake = false;
  inputs.src-aglet-master.type = "github";
  inputs.src-aglet-master.owner = "liquid600pgm";
  inputs.src-aglet-master.repo = "aglet";
  inputs.src-aglet-master.ref = "refs/heads/master";
  inputs.src-aglet-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-aglet-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-aglet-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-aglet-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}