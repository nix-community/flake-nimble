{
  description = ''Async MySQL Connector write in pure Nim.'';
  inputs."amysql-master".url = "path:./master";
  inputs."amysql-v0_1_0".url = "path:./v0_1_0";
  inputs."amysql-v0_6_0".url = "path:./v0_6_0";
  inputs."amysql-v0_6_1".url = "path:./v0_6_1";
  inputs."amysql-v0_7_0".url = "path:./v0_7_0";
  inputs."amysql-v0_7_1".url = "path:./v0_7_1";
  inputs."amysql-v0_7_2".url = "path:./v0_7_2";
  inputs."amysql-v0_7_3".url = "path:./v0_7_3";
  inputs."amysql-v0_7_4".url = "path:./v0_7_4";
  inputs."amysql-v0_7_5".url = "path:./v0_7_5";
  inputs."amysql-v0_7_6".url = "path:./v0_7_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}