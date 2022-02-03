{
  description = ''A wrapper for LMDB the Lightning Memory-Mapped Database'';
  inputs."lmdb-master".url = "path:./master";
  inputs."lmdb-0_1_0".url = "path:./0_1_0";
  inputs."lmdb-0_1_1".url = "path:./0_1_1";
  inputs."lmdb-0_1_2".url = "path:./0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}