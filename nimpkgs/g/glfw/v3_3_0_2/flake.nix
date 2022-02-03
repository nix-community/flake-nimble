{
  description = ''A high-level GLFW 3 wrapper'';
  inputs.src-glfw-v3_3_0_2.flake = false;
  inputs.src-glfw-v3_3_0_2.type = "github";
  inputs.src-glfw-v3_3_0_2.owner = "johnnovak";
  inputs.src-glfw-v3_3_0_2.repo = "nim-glfw";
  inputs.src-glfw-v3_3_0_2.ref = "refs/tags/v3.3.0.2";
  
  outputs = { self, nixpkgs, src-glfw-v3_3_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glfw-v3_3_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glfw-v3_3_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}