{
  description = ''A wrapper for LMDB the Lightning Memory-Mapped Database'';
  inputs.src-lmdb-0_1_2.flake = false;
  inputs.src-lmdb-0_1_2.type = "github";
  inputs.src-lmdb-0_1_2.owner = "FedericoCeratto";
  inputs.src-lmdb-0_1_2.repo = "nim-lmdb";
  inputs.src-lmdb-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-lmdb-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lmdb-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lmdb-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}