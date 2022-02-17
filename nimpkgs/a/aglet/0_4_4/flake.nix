{
  description = ''A safe, high-level, optimized OpenGL wrapper'';
  inputs.src-aglet-0_4_4.flake = false;
  inputs.src-aglet-0_4_4.type = "github";
  inputs.src-aglet-0_4_4.owner = "liquid600pgm";
  inputs.src-aglet-0_4_4.repo = "aglet";
  inputs.src-aglet-0_4_4.ref = "refs/tags/0.4.4";
  
  
  inputs."https://github.com/liquid600pgm/nim-glm".type = "github";
  inputs."https://github.com/liquid600pgm/nim-glm".owner = "riinr";
  inputs."https://github.com/liquid600pgm/nim-glm".repo = "flake-nimble";
  inputs."https://github.com/liquid600pgm/nim-glm".ref = "flake-pinning";
  inputs."https://github.com/liquid600pgm/nim-glm".dir = "nimpkgs/h/https://github.com/liquid600pgm/nim-glm";

  
  inputs."https://github.com/nimgl/glfw".type = "github";
  inputs."https://github.com/nimgl/glfw".owner = "riinr";
  inputs."https://github.com/nimgl/glfw".repo = "flake-nimble";
  inputs."https://github.com/nimgl/glfw".ref = "flake-pinning";
  inputs."https://github.com/nimgl/glfw".dir = "nimpkgs/h/https://github.com/nimgl/glfw";

  outputs = { self, nixpkgs, src-aglet-0_4_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-aglet-0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-aglet-0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}