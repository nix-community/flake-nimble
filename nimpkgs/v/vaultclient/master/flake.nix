{
  description = ''Hashicorp Vault HTTP Client'';
  inputs.src-vaultclient-master.flake = false;
  inputs.src-vaultclient-master.type = "github";
  inputs.src-vaultclient-master.owner = "jackhftang";
  inputs.src-vaultclient-master.repo = "vaultclient.nim";
  inputs.src-vaultclient-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-vaultclient-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vaultclient-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vaultclient-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}