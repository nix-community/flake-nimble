{
  description = ''A high-level GLFW 3 wrapper'';
  inputs.src-glfw-v0_3_1.flake = false;
  inputs.src-glfw-v0_3_1.type = "github";
  inputs.src-glfw-v0_3_1.owner = "johnnovak";
  inputs.src-glfw-v0_3_1.repo = "nim-glfw";
  inputs.src-glfw-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-glfw-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glfw-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glfw-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}