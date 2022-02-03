{
  description = ''Extensible data notation based on Cirru syntax'';
  inputs."cirru_edn-master".url = "path:./master";
  inputs."cirru_edn-v0_1_0".url = "path:./v0_1_0";
  inputs."cirru_edn-v0_1_1".url = "path:./v0_1_1";
  inputs."cirru_edn-v0_1_10".url = "path:./v0_1_10";
  inputs."cirru_edn-v0_1_11".url = "path:./v0_1_11";
  inputs."cirru_edn-v0_1_2".url = "path:./v0_1_2";
  inputs."cirru_edn-v0_1_4".url = "path:./v0_1_4";
  inputs."cirru_edn-v0_1_5".url = "path:./v0_1_5";
  inputs."cirru_edn-v0_1_6".url = "path:./v0_1_6";
  inputs."cirru_edn-v0_1_7".url = "path:./v0_1_7";
  inputs."cirru_edn-v0_1_8".url = "path:./v0_1_8";
  inputs."cirru_edn-v0_1_9".url = "path:./v0_1_9";
  inputs."cirru_edn-v0_2_0".url = "path:./v0_2_0";
  inputs."cirru_edn-v0_3_0".url = "path:./v0_3_0";
  inputs."cirru_edn-v0_3_1".url = "path:./v0_3_1";
  inputs."cirru_edn-v0_3_2".url = "path:./v0_3_2";
  inputs."cirru_edn-v0_3_3".url = "path:./v0_3_3";
  inputs."cirru_edn-v0_3_4".url = "path:./v0_3_4";
  inputs."cirru_edn-v0_3_5".url = "path:./v0_3_5";
  inputs."cirru_edn-v0_3_6".url = "path:./v0_3_6";
  inputs."cirru_edn-v0_3_7".url = "path:./v0_3_7";
  inputs."cirru_edn-v0_3_8".url = "path:./v0_3_8";
  inputs."cirru_edn-v0_4_0".url = "path:./v0_4_0";
  inputs."cirru_edn-v0_4_1".url = "path:./v0_4_1";
  inputs."cirru_edn-v0_4_10".url = "path:./v0_4_10";
  inputs."cirru_edn-v0_4_2".url = "path:./v0_4_2";
  inputs."cirru_edn-v0_4_3".url = "path:./v0_4_3";
  inputs."cirru_edn-v0_4_4".url = "path:./v0_4_4";
  inputs."cirru_edn-v0_4_5".url = "path:./v0_4_5";
  inputs."cirru_edn-v0_4_6".url = "path:./v0_4_6";
  inputs."cirru_edn-v0_4_7".url = "path:./v0_4_7";
  inputs."cirru_edn-v0_4_8".url = "path:./v0_4_8";
  inputs."cirru_edn-v0_4_9".url = "path:./v0_4_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}