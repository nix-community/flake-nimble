{
  description = ''libgcrypt wrapper'';
  inputs.src-libgcrypt-master.flake = false;
  inputs.src-libgcrypt-master.type = "github";
  inputs.src-libgcrypt-master.owner = "FedericoCeratto";
  inputs.src-libgcrypt-master.repo = "nim-libgcrypt";
  inputs.src-libgcrypt-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libgcrypt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libgcrypt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libgcrypt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}