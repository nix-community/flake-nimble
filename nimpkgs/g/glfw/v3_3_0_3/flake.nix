{
  description = ''A high-level GLFW 3 wrapper'';
  inputs.src-glfw-v3_3_0_3.flake = false;
  inputs.src-glfw-v3_3_0_3.type = "github";
  inputs.src-glfw-v3_3_0_3.owner = "johnnovak";
  inputs.src-glfw-v3_3_0_3.repo = "nim-glfw";
  inputs.src-glfw-v3_3_0_3.ref = "refs/tags/v3.3.0.3";
  
  outputs = { self, nixpkgs, src-glfw-v3_3_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glfw-v3_3_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glfw-v3_3_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}