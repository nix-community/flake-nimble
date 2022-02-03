{
  description = ''LevelDB bindings'';
  inputs."leveldb-master".url = "path:./master";
  inputs."leveldb-0_2_0".url = "path:./0_2_0";
  inputs."leveldb-0_3_0".url = "path:./0_3_0";
  inputs."leveldb-0_4_0".url = "path:./0_4_0";
  inputs."leveldb-0_4_1".url = "path:./0_4_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}