{
  description = ''Chebyshev approximation.'';
  inputs.src-chebyshev-master.flake = false;
  inputs.src-chebyshev-master.type = "github";
  inputs.src-chebyshev-master.owner = "jxy";
  inputs.src-chebyshev-master.repo = "chebyshev";
  inputs.src-chebyshev-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-chebyshev-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chebyshev-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chebyshev-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}