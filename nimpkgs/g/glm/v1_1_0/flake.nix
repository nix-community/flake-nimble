{
  description = ''Port of c++ glm library with shader-like syntax'';
  inputs.src-glm-v1_1_0.flake = false;
  inputs.src-glm-v1_1_0.type = "github";
  inputs.src-glm-v1_1_0.owner = "stavenko";
  inputs.src-glm-v1_1_0.repo = "nim-glm";
  inputs.src-glm-v1_1_0.ref = "refs/tags/v1.1.0";
  
  outputs = { self, nixpkgs, src-glm-v1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glm-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glm-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}