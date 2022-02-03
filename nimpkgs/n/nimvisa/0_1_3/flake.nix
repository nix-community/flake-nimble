{
  description = ''nimvisa is C wrapper for NI-VISA instrument control library'';
  inputs.src-nimvisa-0_1_3.flake = false;
  inputs.src-nimvisa-0_1_3.type = "github";
  inputs.src-nimvisa-0_1_3.owner = "leeooox";
  inputs.src-nimvisa-0_1_3.repo = "nimvisa";
  inputs.src-nimvisa-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, src-nimvisa-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimvisa-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimvisa-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}