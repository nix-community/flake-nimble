{
  description = ''GnuTLS wrapper'';
  inputs.src-gnutls-master.flake = false;
  inputs.src-gnutls-master.type = "github";
  inputs.src-gnutls-master.owner = "FedericoCeratto";
  inputs.src-gnutls-master.repo = "nim-gnutls";
  inputs.src-gnutls-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gnutls-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gnutls-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gnutls-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}