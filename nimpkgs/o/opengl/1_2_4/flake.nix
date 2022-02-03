{
  description = ''High-level and low-level wrapper for OpenGL'';
  inputs.src-opengl-1_2_4.flake = false;
  inputs.src-opengl-1_2_4.type = "github";
  inputs.src-opengl-1_2_4.owner = "nim-lang";
  inputs.src-opengl-1_2_4.repo = "opengl";
  inputs.src-opengl-1_2_4.ref = "refs/tags/1.2.4";
  
  
  inputs."x11".url = "path:../../../x/x11";
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";

  outputs = { self, nixpkgs, src-opengl-1_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opengl-1_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opengl-1_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}