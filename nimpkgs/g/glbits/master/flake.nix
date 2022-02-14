{
  description = ''A light interface and selection of utilities for working with OpenGL and SDL2'';
  inputs.src-glbits-master.flake = false;
  inputs.src-glbits-master.type = "github";
  inputs.src-glbits-master.owner = "rlipsc";
  inputs.src-glbits-master.repo = "glbits";
  inputs.src-glbits-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-glbits-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glbits-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glbits-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}