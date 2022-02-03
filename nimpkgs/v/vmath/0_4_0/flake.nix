{
  description = ''Collection of math routines for 2d and 3d graphics.'';
  inputs.src-vmath-0_4_0.flake = false;
  inputs.src-vmath-0_4_0.type = "github";
  inputs.src-vmath-0_4_0.owner = "treeform";
  inputs.src-vmath-0_4_0.repo = "vmath";
  inputs.src-vmath-0_4_0.ref = "refs/tags/0.4.0";
  
  outputs = { self, nixpkgs, src-vmath-0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vmath-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}