{
  description = ''nimvisa is C wrapper for NI-VISA instrument control library'';
  inputs.src-nimvisa-0_1_4.flake = false;
  inputs.src-nimvisa-0_1_4.type = "github";
  inputs.src-nimvisa-0_1_4.owner = "leeooox";
  inputs.src-nimvisa-0_1_4.repo = "nimvisa";
  inputs.src-nimvisa-0_1_4.ref = "refs/tags/0.1.4";
  
  outputs = { self, nixpkgs, src-nimvisa-0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimvisa-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimvisa-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}