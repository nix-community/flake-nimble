{
  description = ''Collection of math routines for 2d and 3d graphics.'';
  inputs.src-vmath-v0_2_2.flake = false;
  inputs.src-vmath-v0_2_2.type = "github";
  inputs.src-vmath-v0_2_2.owner = "treeform";
  inputs.src-vmath-v0_2_2.repo = "vmath";
  inputs.src-vmath-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-vmath-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vmath-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}