{
  description = ''Genetic Algorithm Library for Nim.'';
  inputs.src-nimga-master.flake = false;
  inputs.src-nimga-master.type = "github";
  inputs.src-nimga-master.owner = "toshikiohnogi";
  inputs.src-nimga-master.repo = "nimga";
  inputs.src-nimga-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimga-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimga-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimga-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}