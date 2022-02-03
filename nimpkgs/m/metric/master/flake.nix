{
  description = ''Dimensionful types and dimensional analysis.'';
  inputs.src-metric-master.flake = false;
  inputs.src-metric-master.type = "github";
  inputs.src-metric-master.owner = "mjendrusch";
  inputs.src-metric-master.repo = "metric";
  inputs.src-metric-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-metric-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-metric-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-metric-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}