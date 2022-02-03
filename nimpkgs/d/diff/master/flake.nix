{
  description = ''Library for finding the differences between two sequences'';
  inputs.src-diff-master.flake = false;
  inputs.src-diff-master.type = "github";
  inputs.src-diff-master.owner = "mark-summerfield";
  inputs.src-diff-master.repo = "diff";
  inputs.src-diff-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-diff-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-diff-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-diff-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}