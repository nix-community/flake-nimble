{
  description = ''Chebyshev approximation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-chebyshev-master.flake = false;
  inputs.src-chebyshev-master.type = "github";
  inputs.src-chebyshev-master.owner = "jxy";
  inputs.src-chebyshev-master.repo = "chebyshev";
  inputs.src-chebyshev-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chebyshev-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chebyshev-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chebyshev-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}