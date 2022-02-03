{
  description = ''Port of c++ glm library with shader-like syntax'';
  inputs.src-glm-master.flake = false;
  inputs.src-glm-master.type = "github";
  inputs.src-glm-master.owner = "stavenko";
  inputs.src-glm-master.repo = "nim-glm";
  inputs.src-glm-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-glm-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}