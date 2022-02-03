{
  description = ''A wrapper for the non-linear optimization C library Nlopt'';
  inputs.src-nlopt-v0_3_1.flake = false;
  inputs.src-nlopt-v0_3_1.type = "github";
  inputs.src-nlopt-v0_3_1.owner = "Vindaar";
  inputs.src-nlopt-v0_3_1.repo = "nimnlopt";
  inputs.src-nlopt-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-nlopt-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nlopt-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nlopt-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}