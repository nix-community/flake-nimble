{
  description = ''A wrapper for LMDB the Lightning Memory-Mapped Database'';
  inputs.src-lmdb-master.flake = false;
  inputs.src-lmdb-master.type = "github";
  inputs.src-lmdb-master.owner = "FedericoCeratto";
  inputs.src-lmdb-master.repo = "nim-lmdb";
  inputs.src-lmdb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-lmdb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lmdb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lmdb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}