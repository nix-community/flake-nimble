{
  description = ''Library for working with arbitrary values + a map data structure.'';
  inputs.src-values-0_1_1.flake = false;
  inputs.src-values-0_1_1.type = "github";
  inputs.src-values-0_1_1.owner = "nim-appkit";
  inputs.src-values-0_1_1.repo = "values";
  inputs.src-values-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-values-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-values-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-values-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}