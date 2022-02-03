{
  description = ''A simple interface to a running Consul agent.'';
  inputs.src-consul-0_0_1.flake = false;
  inputs.src-consul-0_0_1.type = "github";
  inputs.src-consul-0_0_1.owner = "makingspace";
  inputs.src-consul-0_0_1.repo = "nim_consul";
  inputs.src-consul-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, src-consul-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-consul-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-consul-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}