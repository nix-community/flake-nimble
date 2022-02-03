{
  description = ''Chebyshev approximation.'';
  inputs.src-chebyshev-v0_2_1.flake = false;
  inputs.src-chebyshev-v0_2_1.type = "github";
  inputs.src-chebyshev-v0_2_1.owner = "jxy";
  inputs.src-chebyshev-v0_2_1.repo = "chebyshev";
  inputs.src-chebyshev-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-chebyshev-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chebyshev-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chebyshev-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}