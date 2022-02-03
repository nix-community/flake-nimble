{
  description = ''A tool that watches Python files and re-runs them on change.'';
  inputs.src-pych-master.flake = false;
  inputs.src-pych-master.type = "github";
  inputs.src-pych-master.owner = "rburmorrison";
  inputs.src-pych-master.repo = "pych";
  inputs.src-pych-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pych-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pych-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pych-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}