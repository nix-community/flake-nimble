{
  description = ''Collection of math routines for 2d and 3d graphics.'';
  inputs.src-vmath-1_0_9.flake = false;
  inputs.src-vmath-1_0_9.type = "github";
  inputs.src-vmath-1_0_9.owner = "treeform";
  inputs.src-vmath-1_0_9.repo = "vmath";
  inputs.src-vmath-1_0_9.ref = "refs/tags/1.0.9";
  
  outputs = { self, nixpkgs, src-vmath-1_0_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-1_0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vmath-1_0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}