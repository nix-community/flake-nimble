{
  description = ''Tor helper library'';
  inputs.src-tor-master.flake = false;
  inputs.src-tor-master.type = "github";
  inputs.src-tor-master.owner = "FedericoCeratto";
  inputs.src-tor-master.repo = "nim-tor";
  inputs.src-tor-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tor-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}