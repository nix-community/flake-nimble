{
  description = ''Port of c++ glm library with shader-like syntax'';
  inputs.src-glm-v1_0_2.flake = false;
  inputs.src-glm-v1_0_2.type = "github";
  inputs.src-glm-v1_0_2.owner = "stavenko";
  inputs.src-glm-v1_0_2.repo = "nim-glm";
  inputs.src-glm-v1_0_2.ref = "refs/tags/v1.0.2";
  
  outputs = { self, nixpkgs, src-glm-v1_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glm-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glm-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}