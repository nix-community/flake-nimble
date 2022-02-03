{
  description = ''Parse config by defining an object'';
  inputs.src-sim-0_1_5.flake = false;
  inputs.src-sim-0_1_5.type = "github";
  inputs.src-sim-0_1_5.owner = "ba0f3";
  inputs.src-sim-0_1_5.repo = "sim.nim";
  inputs.src-sim-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-sim-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sim-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sim-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}