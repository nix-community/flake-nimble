{
  description = ''A Jupyter kernel for nim.'';
  inputs.src-jupyternim-0_1_1.flake = false;
  inputs.src-jupyternim-0_1_1.type = "github";
  inputs.src-jupyternim-0_1_1.owner = "stisa";
  inputs.src-jupyternim-0_1_1.repo = "jupyternim";
  inputs.src-jupyternim-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-jupyternim-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jupyternim-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jupyternim-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}