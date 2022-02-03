{
  description = ''BSON Binary JSON Serialization'';
  inputs."bson-master".url = "path:./master";
  inputs."bson-v1_0_0".url = "path:./v1_0_0";
  inputs."bson-v1_0_1".url = "path:./v1_0_1";
  inputs."bson-v1_1_1".url = "path:./v1_1_1";
  inputs."bson-v1_1_2".url = "path:./v1_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}