{
  description = ''A simple interface to a running Consul agent.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-consul-master.flake = false;
  inputs.src-consul-master.type = "github";
  inputs.src-consul-master.owner = "makingspace";
  inputs.src-consul-master.repo = "nim_consul";
  inputs.src-consul-master.ref = "refs/heads/master";
  inputs.src-consul-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-consul-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-consul-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-consul-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}