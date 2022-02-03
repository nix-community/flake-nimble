{
  description = ''Wrapper for the fswatch library.'';
  inputs.src-fswatch-master.flake = false;
  inputs.src-fswatch-master.type = "github";
  inputs.src-fswatch-master.owner = "FedericoCeratto";
  inputs.src-fswatch-master.repo = "nim-fswatch";
  inputs.src-fswatch-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fswatch-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fswatch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fswatch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}