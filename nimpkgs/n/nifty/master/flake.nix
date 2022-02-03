{
  description = ''A decentralized (pseudo) package manager and script runner.'';
  inputs.src-nifty-master.flake = false;
  inputs.src-nifty-master.type = "github";
  inputs.src-nifty-master.owner = "h3rald";
  inputs.src-nifty-master.repo = "nifty";
  inputs.src-nifty-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nifty-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nifty-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nifty-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}