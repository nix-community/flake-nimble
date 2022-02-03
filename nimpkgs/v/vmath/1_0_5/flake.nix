{
  description = ''Collection of math routines for 2d and 3d graphics.'';
  inputs.src-vmath-1_0_5.flake = false;
  inputs.src-vmath-1_0_5.type = "github";
  inputs.src-vmath-1_0_5.owner = "treeform";
  inputs.src-vmath-1_0_5.repo = "vmath";
  inputs.src-vmath-1_0_5.ref = "refs/tags/1.0.5";
  
  outputs = { self, nixpkgs, src-vmath-1_0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-1_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vmath-1_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}