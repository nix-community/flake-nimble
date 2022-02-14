{
  description = ''A light interface and selection of utilities for working with OpenGL and SDL2'';
  inputs.src-glbits-v0_1_2.flake = false;
  inputs.src-glbits-v0_1_2.type = "github";
  inputs.src-glbits-v0_1_2.owner = "rlipsc";
  inputs.src-glbits-v0_1_2.repo = "glbits";
  inputs.src-glbits-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-glbits-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glbits-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glbits-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}