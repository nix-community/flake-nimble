{
  description = ''Grafana module for Nim'';
  inputs.src-grafanim-master.flake = false;
  inputs.src-grafanim-master.type = "github";
  inputs.src-grafanim-master.owner = "jamesalbert";
  inputs.src-grafanim-master.repo = "grafanim";
  inputs.src-grafanim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-grafanim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-grafanim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-grafanim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}