{
  description = ''Unroll for-loops at compile-time.'';
  inputs.src-unrolled-v0_1-alpha.flake = false;
  inputs.src-unrolled-v0_1-alpha.type = "github";
  inputs.src-unrolled-v0_1-alpha.owner = "schneiderfelipe";
  inputs.src-unrolled-v0_1-alpha.repo = "unrolled";
  inputs.src-unrolled-v0_1-alpha.ref = "refs/tags/v0.1-alpha";
  
  outputs = { self, nixpkgs, src-unrolled-v0_1-alpha, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unrolled-v0_1-alpha;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unrolled-v0_1-alpha"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}