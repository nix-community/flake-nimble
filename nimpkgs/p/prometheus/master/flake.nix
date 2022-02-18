{
  description = ''Library for exposing metrics to Prometheus'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-prometheus-master.flake = false;
  inputs.src-prometheus-master.type = "github";
  inputs.src-prometheus-master.owner = "dom96";
  inputs.src-prometheus-master.repo = "prometheus";
  inputs.src-prometheus-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-prometheus-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prometheus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-prometheus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}