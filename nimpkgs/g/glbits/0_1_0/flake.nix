{
  description = ''A light interface and selection of utilities for working with OpenGL and SDL2'';
  inputs.src-glbits-0_1_0.flake = false;
  inputs.src-glbits-0_1_0.type = "github";
  inputs.src-glbits-0_1_0.owner = "rlipsc";
  inputs.src-glbits-0_1_0.repo = "glbits";
  inputs.src-glbits-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-glbits-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glbits-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glbits-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}