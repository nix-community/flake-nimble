{
  description = ''Parse config by defining an object'';
  inputs.src-sim-master.flake = false;
  inputs.src-sim-master.type = "github";
  inputs.src-sim-master.owner = "ba0f3";
  inputs.src-sim-master.repo = "sim.nim";
  inputs.src-sim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}