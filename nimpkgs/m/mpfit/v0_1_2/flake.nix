{
  description = ''A wrapper for the cMPFIT non-linear least squares fitting library'';
  inputs.src-mpfit-v0_1_2.flake = false;
  inputs.src-mpfit-v0_1_2.type = "github";
  inputs.src-mpfit-v0_1_2.owner = "Vindaar";
  inputs.src-mpfit-v0_1_2.repo = "nim-mpfit";
  inputs.src-mpfit-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-mpfit-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpfit-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mpfit-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}