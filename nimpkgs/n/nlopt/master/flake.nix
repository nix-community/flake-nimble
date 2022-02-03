{
  description = ''A wrapper for the non-linear optimization C library Nlopt'';
  inputs.src-nlopt-master.flake = false;
  inputs.src-nlopt-master.type = "github";
  inputs.src-nlopt-master.owner = "Vindaar";
  inputs.src-nlopt-master.repo = "nimnlopt";
  inputs.src-nlopt-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nlopt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nlopt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nlopt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}