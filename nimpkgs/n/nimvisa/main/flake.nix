{
  description = ''nimvisa is C wrapper for NI-VISA instrument control library'';
  inputs.src-nimvisa-main.flake = false;
  inputs.src-nimvisa-main.type = "github";
  inputs.src-nimvisa-main.owner = "leeooox";
  inputs.src-nimvisa-main.repo = "nimvisa";
  inputs.src-nimvisa-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-nimvisa-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimvisa-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimvisa-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}