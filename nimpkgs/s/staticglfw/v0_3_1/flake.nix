{
  description = ''Static GLFW for nim'';
  inputs.src-staticglfw-v0_3_1.flake = false;
  inputs.src-staticglfw-v0_3_1.type = "github";
  inputs.src-staticglfw-v0_3_1.owner = "treeform";
  inputs.src-staticglfw-v0_3_1.repo = "staticglfw";
  inputs.src-staticglfw-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-staticglfw-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-staticglfw-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-staticglfw-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}