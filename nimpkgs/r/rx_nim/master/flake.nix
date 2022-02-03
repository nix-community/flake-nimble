{
  description = ''An implementation of rx observables in nim'';
  inputs.src-rx_nim-master.flake = false;
  inputs.src-rx_nim-master.type = "github";
  inputs.src-rx_nim-master.owner = "nortero-code";
  inputs.src-rx_nim-master.repo = "rx-nim";
  inputs.src-rx_nim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-rx_nim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rx_nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rx_nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}