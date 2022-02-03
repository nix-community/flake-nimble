{
  description = ''A nim flavor of pytorch'';
  inputs."torch-master".url = "path:./master";
  inputs."torch-v0_1_1".url = "path:./v0_1_1";
  inputs."torch-v0_1_10".url = "path:./v0_1_10";
  inputs."torch-v0_1_11".url = "path:./v0_1_11";
  inputs."torch-v0_1_12".url = "path:./v0_1_12";
  inputs."torch-v0_1_13".url = "path:./v0_1_13";
  inputs."torch-v0_1_15".url = "path:./v0_1_15";
  inputs."torch-v0_1_16".url = "path:./v0_1_16";
  inputs."torch-v0_1_17".url = "path:./v0_1_17";
  inputs."torch-v0_1_18".url = "path:./v0_1_18";
  inputs."torch-v0_1_19".url = "path:./v0_1_19";
  inputs."torch-v0_1_2".url = "path:./v0_1_2";
  inputs."torch-v0_1_20".url = "path:./v0_1_20";
  inputs."torch-v0_1_21".url = "path:./v0_1_21";
  inputs."torch-v0_1_22".url = "path:./v0_1_22";
  inputs."torch-v0_1_23".url = "path:./v0_1_23";
  inputs."torch-v0_1_24".url = "path:./v0_1_24";
  inputs."torch-v0_1_3".url = "path:./v0_1_3";
  inputs."torch-v0_1_4".url = "path:./v0_1_4";
  inputs."torch-v0_1_5".url = "path:./v0_1_5";
  inputs."torch-v0_1_6".url = "path:./v0_1_6";
  inputs."torch-v0_1_8".url = "path:./v0_1_8";
  inputs."torch-v0_1_9".url = "path:./v0_1_9";
  inputs."torch-v0_2_0".url = "path:./v0_2_0";
  inputs."torch-v0_2_1".url = "path:./v0_2_1";
  inputs."torch-v0_2_2".url = "path:./v0_2_2";
  inputs."torch-v0_2_3".url = "path:./v0_2_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}