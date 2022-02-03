{
  description = ''A simple, stateless StatsD client library'';
  inputs.src-statsd_client-0_1_1.flake = false;
  inputs.src-statsd_client-0_1_1.type = "github";
  inputs.src-statsd_client-0_1_1.owner = "FedericoCeratto";
  inputs.src-statsd_client-0_1_1.repo = "nim-statsd-client";
  inputs.src-statsd_client-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-statsd_client-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-statsd_client-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-statsd_client-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}