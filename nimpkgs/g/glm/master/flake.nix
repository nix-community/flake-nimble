{
  description = ''Port of c++ glm library with shader-like syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-glm-master.flake = false;
  inputs.src-glm-master.type = "github";
  inputs.src-glm-master.owner = "stavenko";
  inputs.src-glm-master.repo = "nim-glm";
  inputs.src-glm-master.ref = "refs/heads/master";
  inputs.src-glm-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-glm-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-glm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}