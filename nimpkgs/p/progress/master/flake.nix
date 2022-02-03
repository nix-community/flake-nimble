{
  description = ''A simple progress bar for Nim.'';
  inputs.src-progress-master.flake = false;
  inputs.src-progress-master.type = "github";
  inputs.src-progress-master.owner = "euantorano";
  inputs.src-progress-master.repo = "progress.nim";
  inputs.src-progress-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-progress-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-progress-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-progress-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}