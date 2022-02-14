{
  description = ''A light interface and selection of utilities for working with OpenGL and SDL2'';
  inputs.src-glbits-v0_1_3.flake = false;
  inputs.src-glbits-v0_1_3.type = "github";
  inputs.src-glbits-v0_1_3.owner = "rlipsc";
  inputs.src-glbits-v0_1_3.repo = "glbits";
  inputs.src-glbits-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-glbits-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glbits-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glbits-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}