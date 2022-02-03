{
  description = ''nimjson generates nim object definitions from json documents.'';
  inputs."nimjson-master".url = "path:./master";
  inputs."nimjson-v1_0_0".url = "path:./v1_0_0";
  inputs."nimjson-v1_0_1".url = "path:./v1_0_1";
  inputs."nimjson-v1_0_2".url = "path:./v1_0_2";
  inputs."nimjson-v1_1_0".url = "path:./v1_1_0";
  inputs."nimjson-v1_2_0".url = "path:./v1_2_0";
  inputs."nimjson-v1_2_1".url = "path:./v1_2_1";
  inputs."nimjson-v1_2_2".url = "path:./v1_2_2";
  inputs."nimjson-v1_2_3".url = "path:./v1_2_3";
  inputs."nimjson-v1_2_4".url = "path:./v1_2_4";
  inputs."nimjson-v1_2_5".url = "path:./v1_2_5";
  inputs."nimjson-v1_2_6".url = "path:./v1_2_6";
  inputs."nimjson-v1_2_7".url = "path:./v1_2_7";
  inputs."nimjson-v1_2_8".url = "path:./v1_2_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}