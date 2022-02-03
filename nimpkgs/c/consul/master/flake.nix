{
  description = ''A simple interface to a running Consul agent.'';
  inputs.src-consul-master.flake = false;
  inputs.src-consul-master.type = "github";
  inputs.src-consul-master.owner = "makingspace";
  inputs.src-consul-master.repo = "nim_consul";
  inputs.src-consul-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-consul-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-consul-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-consul-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}