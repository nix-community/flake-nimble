{
  description = ''Static GLFW for nim'';
  inputs.src-staticglfw-v3_3_0_2.flake = false;
  inputs.src-staticglfw-v3_3_0_2.type = "github";
  inputs.src-staticglfw-v3_3_0_2.owner = "treeform";
  inputs.src-staticglfw-v3_3_0_2.repo = "staticglfw";
  inputs.src-staticglfw-v3_3_0_2.ref = "refs/tags/v3.3.0.2";
  
  outputs = { self, nixpkgs, src-staticglfw-v3_3_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-staticglfw-v3_3_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-staticglfw-v3_3_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}