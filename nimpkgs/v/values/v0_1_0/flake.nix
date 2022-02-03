{
  description = ''Library for working with arbitrary values + a map data structure.'';
  inputs.src-values-v0_1_0.flake = false;
  inputs.src-values-v0_1_0.type = "github";
  inputs.src-values-v0_1_0.owner = "nim-appkit";
  inputs.src-values-v0_1_0.repo = "values";
  inputs.src-values-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-values-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-values-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-values-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}