{
  description = ''Nim metrics client library supporting the Prometheus monitoring toolkit'';
  inputs.src-metrics-master.flake = false;
  inputs.src-metrics-master.type = "github";
  inputs.src-metrics-master.owner = "status-im";
  inputs.src-metrics-master.repo = "nim-metrics";
  inputs.src-metrics-master.ref = "refs/heads/master";
  
  
  inputs."chronos".url = "path:../../../c/chronos";
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";

  outputs = { self, nixpkgs, src-metrics-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-metrics-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-metrics-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}