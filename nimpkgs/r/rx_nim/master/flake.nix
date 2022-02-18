{
  description = ''An implementation of rx observables in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rx_nim-master.flake = false;
  inputs.src-rx_nim-master.type = "github";
  inputs.src-rx_nim-master.owner = "nortero-code";
  inputs.src-rx_nim-master.repo = "rx-nim";
  inputs.src-rx_nim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rx_nim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rx_nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rx_nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}