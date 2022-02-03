{
  description = ''A high-level GLFW 3 wrapper'';
  inputs.src-glfw-v3_3_0_0.flake = false;
  inputs.src-glfw-v3_3_0_0.type = "github";
  inputs.src-glfw-v3_3_0_0.owner = "johnnovak";
  inputs.src-glfw-v3_3_0_0.repo = "nim-glfw";
  inputs.src-glfw-v3_3_0_0.ref = "refs/tags/v3.3.0.0";
  
  outputs = { self, nixpkgs, src-glfw-v3_3_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glfw-v3_3_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glfw-v3_3_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}