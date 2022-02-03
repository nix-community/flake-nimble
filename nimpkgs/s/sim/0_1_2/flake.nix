{
  description = ''Parse config by defining an object'';
  inputs.src-sim-0_1_2.flake = false;
  inputs.src-sim-0_1_2.type = "github";
  inputs.src-sim-0_1_2.owner = "ba0f3";
  inputs.src-sim-0_1_2.repo = "sim.nim";
  inputs.src-sim-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-sim-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sim-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sim-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}