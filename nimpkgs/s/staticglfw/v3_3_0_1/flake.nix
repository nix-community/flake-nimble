{
  description = ''Static GLFW for nim'';
  inputs.src-staticglfw-v3_3_0_1.flake = false;
  inputs.src-staticglfw-v3_3_0_1.type = "github";
  inputs.src-staticglfw-v3_3_0_1.owner = "treeform";
  inputs.src-staticglfw-v3_3_0_1.repo = "staticglfw";
  inputs.src-staticglfw-v3_3_0_1.ref = "refs/tags/v3.3.0.1";
  
  outputs = { self, nixpkgs, src-staticglfw-v3_3_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-staticglfw-v3_3_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-staticglfw-v3_3_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}