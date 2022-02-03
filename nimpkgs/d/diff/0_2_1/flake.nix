{
  description = ''Library for finding the differences between two sequences'';
  inputs.src-diff-0_2_1.flake = false;
  inputs.src-diff-0_2_1.type = "github";
  inputs.src-diff-0_2_1.owner = "mark-summerfield";
  inputs.src-diff-0_2_1.repo = "diff";
  inputs.src-diff-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-diff-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-diff-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-diff-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}