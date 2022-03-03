{
  description = ''A Jupyter kernel for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-jupyternim-0_1_1.flake = false;
  inputs.src-jupyternim-0_1_1.type = "github";
  inputs.src-jupyternim-0_1_1.owner = "stisa";
  inputs.src-jupyternim-0_1_1.repo = "jupyternim";
  inputs.src-jupyternim-0_1_1.ref = "refs/tags/0.1.1";
  inputs.src-jupyternim-0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jupyternim-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jupyternim-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jupyternim-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}