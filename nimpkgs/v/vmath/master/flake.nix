{
  description = ''Collection of math routines for 2d and 3d graphics.'';
  inputs.src-vmath-master.flake = false;
  inputs.src-vmath-master.type = "github";
  inputs.src-vmath-master.owner = "treeform";
  inputs.src-vmath-master.repo = "vmath";
  inputs.src-vmath-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-vmath-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vmath-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}