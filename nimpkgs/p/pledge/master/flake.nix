{
  description = ''OpenBSDs pledge(2) for Nim.'';
  inputs.src-pledge-master.flake = false;
  inputs.src-pledge-master.type = "github";
  inputs.src-pledge-master.owner = "euantorano";
  inputs.src-pledge-master.repo = "pledge.nim";
  inputs.src-pledge-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pledge-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pledge-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pledge-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}