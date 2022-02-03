{
  description = ''Parse config by defining an object'';
  inputs.src-sim-0_1_3.flake = false;
  inputs.src-sim-0_1_3.type = "github";
  inputs.src-sim-0_1_3.owner = "ba0f3";
  inputs.src-sim-0_1_3.repo = "sim.nim";
  inputs.src-sim-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, src-sim-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sim-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sim-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}