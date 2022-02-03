{
  description = ''A poker hand evaluator'';
  inputs.src-pokereval-master.flake = false;
  inputs.src-pokereval-master.type = "github";
  inputs.src-pokereval-master.owner = "jasonlu7";
  inputs.src-pokereval-master.repo = "pokereval";
  inputs.src-pokereval-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pokereval-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pokereval-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pokereval-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}