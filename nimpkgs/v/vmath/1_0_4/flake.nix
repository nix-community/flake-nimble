{
  description = ''Collection of math routines for 2d and 3d graphics.'';
  inputs.src-vmath-1_0_4.flake = false;
  inputs.src-vmath-1_0_4.type = "github";
  inputs.src-vmath-1_0_4.owner = "treeform";
  inputs.src-vmath-1_0_4.repo = "vmath";
  inputs.src-vmath-1_0_4.ref = "refs/tags/1.0.4";
  
  outputs = { self, nixpkgs, src-vmath-1_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-1_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vmath-1_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}