{
  description = ''A light interface and selection of utilities for working with OpenGL and SDL2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-glbits-master.flake = false;
  inputs.src-glbits-master.type = "github";
  inputs.src-glbits-master.owner = "rlipsc";
  inputs.src-glbits-master.repo = "glbits";
  inputs.src-glbits-master.ref = "refs/heads/master";
  inputs.src-glbits-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-glbits-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glbits-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-glbits-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}