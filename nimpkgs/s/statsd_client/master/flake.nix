{
  description = ''A simple, stateless StatsD client library'';
  inputs.src-statsd_client-master.flake = false;
  inputs.src-statsd_client-master.type = "github";
  inputs.src-statsd_client-master.owner = "FedericoCeratto";
  inputs.src-statsd_client-master.repo = "nim-statsd-client";
  inputs.src-statsd_client-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-statsd_client-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-statsd_client-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-statsd_client-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}