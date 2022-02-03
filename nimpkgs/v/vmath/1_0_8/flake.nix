{
  description = ''Collection of math routines for 2d and 3d graphics.'';
  inputs.src-vmath-1_0_8.flake = false;
  inputs.src-vmath-1_0_8.type = "github";
  inputs.src-vmath-1_0_8.owner = "treeform";
  inputs.src-vmath-1_0_8.repo = "vmath";
  inputs.src-vmath-1_0_8.ref = "refs/tags/1.0.8";
  
  outputs = { self, nixpkgs, src-vmath-1_0_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-1_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vmath-1_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}