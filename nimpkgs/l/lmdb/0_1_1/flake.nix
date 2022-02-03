{
  description = ''A wrapper for LMDB the Lightning Memory-Mapped Database'';
  inputs.src-lmdb-0_1_1.flake = false;
  inputs.src-lmdb-0_1_1.type = "github";
  inputs.src-lmdb-0_1_1.owner = "FedericoCeratto";
  inputs.src-lmdb-0_1_1.repo = "nim-lmdb";
  inputs.src-lmdb-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-lmdb-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lmdb-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lmdb-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}