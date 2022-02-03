{
  description = ''Static GLFW for nim'';
  inputs.src-staticglfw-4_1_2.flake = false;
  inputs.src-staticglfw-4_1_2.type = "github";
  inputs.src-staticglfw-4_1_2.owner = "treeform";
  inputs.src-staticglfw-4_1_2.repo = "staticglfw";
  inputs.src-staticglfw-4_1_2.ref = "refs/tags/4.1.2";
  
  
  inputs."opengl".url = "path:../../../o/opengl";
  inputs."opengl".type = "github";
  inputs."opengl".owner = "riinr";
  inputs."opengl".repo = "flake-nimble";
  inputs."opengl".ref = "flake-pinning";
  inputs."opengl".dir = "nimpkgs/o/opengl";

  outputs = { self, nixpkgs, src-staticglfw-4_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-staticglfw-4_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-staticglfw-4_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}