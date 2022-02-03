{
  description = ''Key/Value storage into a fast file-hash'';
  inputs."niledb-master".url = "path:./master";
  inputs."niledb-v1_0_0".url = "path:./v1_0_0";
  inputs."niledb-v1_1_0".url = "path:./v1_1_0";
  inputs."niledb-v1_3_0".url = "path:./v1_3_0";
  inputs."niledb-v1_3_1".url = "path:./v1_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}