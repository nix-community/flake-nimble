{
  description = ''Collection of math routines for 2d and 3d graphics.'';
  inputs.src-vmath-0_3_3.flake = false;
  inputs.src-vmath-0_3_3.type = "github";
  inputs.src-vmath-0_3_3.owner = "treeform";
  inputs.src-vmath-0_3_3.repo = "vmath";
  inputs.src-vmath-0_3_3.ref = "refs/tags/0.3.3";
  
  outputs = { self, nixpkgs, src-vmath-0_3_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vmath-0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}