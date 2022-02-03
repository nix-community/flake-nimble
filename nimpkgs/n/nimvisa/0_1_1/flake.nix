{
  description = ''nimvisa is C wrapper for NI-VISA instrument control library'';
  inputs.src-nimvisa-0_1_1.flake = false;
  inputs.src-nimvisa-0_1_1.type = "github";
  inputs.src-nimvisa-0_1_1.owner = "leeooox";
  inputs.src-nimvisa-0_1_1.repo = "nimvisa";
  inputs.src-nimvisa-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-nimvisa-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimvisa-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimvisa-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}