{
  description = ''A wrapper for the cMPFIT non-linear least squares fitting library'';
  inputs.src-mpfit-master.flake = false;
  inputs.src-mpfit-master.type = "github";
  inputs.src-mpfit-master.owner = "Vindaar";
  inputs.src-mpfit-master.repo = "nim-mpfit";
  inputs.src-mpfit-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-mpfit-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpfit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mpfit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}