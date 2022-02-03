{
  description = ''Collection of math routines for 2d and 3d graphics.'';
  inputs.src-vmath-1_1_0.flake = false;
  inputs.src-vmath-1_1_0.type = "github";
  inputs.src-vmath-1_1_0.owner = "treeform";
  inputs.src-vmath-1_1_0.repo = "vmath";
  inputs.src-vmath-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, src-vmath-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vmath-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}