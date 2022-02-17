{
  description = ''High-level and low-level wrapper for OpenGL'';
  inputs.src-opengl-1_2_6.flake = false;
  inputs.src-opengl-1_2_6.type = "github";
  inputs.src-opengl-1_2_6.owner = "nim-lang";
  inputs.src-opengl-1_2_6.repo = "opengl";
  inputs.src-opengl-1_2_6.ref = "refs/tags/1.2.6";
  
  
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";

  outputs = { self, nixpkgs, src-opengl-1_2_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opengl-1_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opengl-1_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}