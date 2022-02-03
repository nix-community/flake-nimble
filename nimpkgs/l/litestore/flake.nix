{
  description = ''A lightweight, self-contained, RESTful, searchable, multi-format NoSQL document store'';
  inputs."litestore-master".url = "path:./master";
  inputs."litestore-v1_0_0".url = "path:./v1_0_0";
  inputs."litestore-v1_0_1".url = "path:./v1_0_1";
  inputs."litestore-v1_0_2".url = "path:./v1_0_2";
  inputs."litestore-v1_0_3".url = "path:./v1_0_3";
  inputs."litestore-v1_0_4".url = "path:./v1_0_4";
  inputs."litestore-v1_0_5".url = "path:./v1_0_5";
  inputs."litestore-v1_1_0".url = "path:./v1_1_0";
  inputs."litestore-v1_1_1".url = "path:./v1_1_1";
  inputs."litestore-v1_10_0".url = "path:./v1_10_0";
  inputs."litestore-v1_11_0".url = "path:./v1_11_0";
  inputs."litestore-v1_2_0".url = "path:./v1_2_0";
  inputs."litestore-v1_3_0".url = "path:./v1_3_0";
  inputs."litestore-v1_3_1".url = "path:./v1_3_1";
  inputs."litestore-v1_4_0".url = "path:./v1_4_0";
  inputs."litestore-v1_4_1".url = "path:./v1_4_1";
  inputs."litestore-v1_5_0".url = "path:./v1_5_0";
  inputs."litestore-v1_5_1".url = "path:./v1_5_1";
  inputs."litestore-v1_6_0".url = "path:./v1_6_0";
  inputs."litestore-v1_7_0".url = "path:./v1_7_0";
  inputs."litestore-v1_8_0".url = "path:./v1_8_0";
  inputs."litestore-v1_9_0".url = "path:./v1_9_0";
  inputs."litestore-v1_9_1".url = "path:./v1_9_1";
  inputs."litestore-v1_9_2".url = "path:./v1_9_2";
  inputs."litestore-v1_9_3".url = "path:./v1_9_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}