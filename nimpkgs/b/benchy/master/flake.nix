{
  description = ''Simple benchmarking to time your code.'';
  inputs.src-benchy-master.flake = false;
  inputs.src-benchy-master.type = "github";
  inputs.src-benchy-master.owner = "treeform";
  inputs.src-benchy-master.repo = "benchy";
  inputs.src-benchy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-benchy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-benchy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-benchy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}