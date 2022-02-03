{
  description = ''A wrapper for the non-linear optimization C library Nlopt'';
  inputs.src-nlopt-v0_3_0.flake = false;
  inputs.src-nlopt-v0_3_0.type = "github";
  inputs.src-nlopt-v0_3_0.owner = "Vindaar";
  inputs.src-nlopt-v0_3_0.repo = "nimnlopt";
  inputs.src-nlopt-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-nlopt-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nlopt-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nlopt-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}