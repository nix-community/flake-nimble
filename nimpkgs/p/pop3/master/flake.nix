{
  description = ''POP3 client library'';
  inputs.src-pop3-master.flake = false;
  inputs.src-pop3-master.type = "github";
  inputs.src-pop3-master.owner = "FedericoCeratto";
  inputs.src-pop3-master.repo = "nim-pop3";
  inputs.src-pop3-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pop3-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pop3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pop3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}