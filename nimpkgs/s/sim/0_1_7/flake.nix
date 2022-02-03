{
  description = ''Parse config by defining an object'';
  inputs.src-sim-0_1_7.flake = false;
  inputs.src-sim-0_1_7.type = "github";
  inputs.src-sim-0_1_7.owner = "ba0f3";
  inputs.src-sim-0_1_7.repo = "sim.nim";
  inputs.src-sim-0_1_7.ref = "refs/tags/0.1.7";
  
  outputs = { self, nixpkgs, src-sim-0_1_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sim-0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sim-0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}