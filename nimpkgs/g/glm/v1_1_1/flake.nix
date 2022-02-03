{
  description = ''Port of c++ glm library with shader-like syntax'';
  inputs.src-glm-v1_1_1.flake = false;
  inputs.src-glm-v1_1_1.type = "github";
  inputs.src-glm-v1_1_1.owner = "stavenko";
  inputs.src-glm-v1_1_1.repo = "nim-glm";
  inputs.src-glm-v1_1_1.ref = "refs/tags/v1.1.1";
  
  outputs = { self, nixpkgs, src-glm-v1_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glm-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glm-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}