{
  description = ''Library for exposing metrics to Prometheus'';
  inputs.src-prometheus-master.flake = false;
  inputs.src-prometheus-master.type = "github";
  inputs.src-prometheus-master.owner = "dom96";
  inputs.src-prometheus-master.repo = "prometheus";
  inputs.src-prometheus-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-prometheus-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prometheus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-prometheus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}