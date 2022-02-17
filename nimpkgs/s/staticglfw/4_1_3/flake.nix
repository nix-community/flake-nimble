{
  description = ''Static GLFW for nim'';
  inputs.src-staticglfw-4_1_3.flake = false;
  inputs.src-staticglfw-4_1_3.type = "github";
  inputs.src-staticglfw-4_1_3.owner = "treeform";
  inputs.src-staticglfw-4_1_3.repo = "staticglfw";
  inputs.src-staticglfw-4_1_3.ref = "refs/tags/4.1.3";
  
  
  inputs."opengl".type = "github";
  inputs."opengl".owner = "riinr";
  inputs."opengl".repo = "flake-nimble";
  inputs."opengl".ref = "flake-pinning";
  inputs."opengl".dir = "nimpkgs/o/opengl";

  outputs = { self, nixpkgs, src-staticglfw-4_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-staticglfw-4_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-staticglfw-4_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}