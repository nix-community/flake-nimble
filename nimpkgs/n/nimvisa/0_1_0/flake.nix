{
  description = ''nimvisa is C wrapper for NI-VISA instrument control library'';
  inputs.src-nimvisa-0_1_0.flake = false;
  inputs.src-nimvisa-0_1_0.type = "github";
  inputs.src-nimvisa-0_1_0.owner = "leeooox";
  inputs.src-nimvisa-0_1_0.repo = "nimvisa";
  inputs.src-nimvisa-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-nimvisa-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimvisa-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimvisa-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}