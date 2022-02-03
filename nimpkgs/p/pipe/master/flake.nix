{
  description = ''Pipe operator for nim.'';
  inputs.src-pipe-master.flake = false;
  inputs.src-pipe-master.type = "github";
  inputs.src-pipe-master.owner = "CosmicToast";
  inputs.src-pipe-master.repo = "pipe";
  inputs.src-pipe-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pipe-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pipe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pipe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}