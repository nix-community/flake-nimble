{
  description = ''Static GLFW for nim'';
  inputs.src-staticglfw-master.flake = false;
  inputs.src-staticglfw-master.type = "github";
  inputs.src-staticglfw-master.owner = "treeform";
  inputs.src-staticglfw-master.repo = "staticglfw";
  inputs.src-staticglfw-master.ref = "refs/heads/master";
  
  
  inputs."opengl".type = "github";
  inputs."opengl".owner = "riinr";
  inputs."opengl".repo = "flake-nimble";
  inputs."opengl".ref = "flake-pinning";
  inputs."opengl".dir = "nimpkgs/o/opengl";

  outputs = { self, nixpkgs, src-staticglfw-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-staticglfw-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-staticglfw-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}