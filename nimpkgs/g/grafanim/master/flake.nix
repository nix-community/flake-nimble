{
  description = ''Grafana module for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-grafanim-master.flake = false;
  inputs.src-grafanim-master.type = "github";
  inputs.src-grafanim-master.owner = "jamesalbert";
  inputs.src-grafanim-master.repo = "grafanim";
  inputs.src-grafanim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-grafanim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-grafanim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-grafanim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}