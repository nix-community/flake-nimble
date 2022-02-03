{
  description = ''A high-level GLFW 3 wrapper'';
  inputs.src-glfw-v3_3_2_1.flake = false;
  inputs.src-glfw-v3_3_2_1.type = "github";
  inputs.src-glfw-v3_3_2_1.owner = "johnnovak";
  inputs.src-glfw-v3_3_2_1.repo = "nim-glfw";
  inputs.src-glfw-v3_3_2_1.ref = "refs/tags/v3.3.2.1";
  
  outputs = { self, nixpkgs, src-glfw-v3_3_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glfw-v3_3_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glfw-v3_3_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}