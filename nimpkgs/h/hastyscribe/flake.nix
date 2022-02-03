{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';
  inputs."hastyscribe-master".url = "path:./master";
  inputs."hastyscribe-v1_0".url = "path:./v1_0";
  inputs."hastyscribe-v1_0_1".url = "path:./v1_0_1";
  inputs."hastyscribe-v1_0_2".url = "path:./v1_0_2";
  inputs."hastyscribe-v1_0_3".url = "path:./v1_0_3";
  inputs."hastyscribe-v1_0_4".url = "path:./v1_0_4";
  inputs."hastyscribe-v1_0_5".url = "path:./v1_0_5";
  inputs."hastyscribe-v1_0_6".url = "path:./v1_0_6";
  inputs."hastyscribe-v1_0_7".url = "path:./v1_0_7";
  inputs."hastyscribe-v1_0_8".url = "path:./v1_0_8";
  inputs."hastyscribe-v1_0_9".url = "path:./v1_0_9";
  inputs."hastyscribe-v1_1_0".url = "path:./v1_1_0";
  inputs."hastyscribe-v1_1_1".url = "path:./v1_1_1";
  inputs."hastyscribe-v1_1_2".url = "path:./v1_1_2";
  inputs."hastyscribe-v1_1_3".url = "path:./v1_1_3";
  inputs."hastyscribe-v1_10_0".url = "path:./v1_10_0";
  inputs."hastyscribe-v1_11_0".url = "path:./v1_11_0";
  inputs."hastyscribe-v1_12_0".url = "path:./v1_12_0";
  inputs."hastyscribe-v1_12_1".url = "path:./v1_12_1";
  inputs."hastyscribe-v1_12_2".url = "path:./v1_12_2";
  inputs."hastyscribe-v1_12_3".url = "path:./v1_12_3";
  inputs."hastyscribe-v1_12_4".url = "path:./v1_12_4";
  inputs."hastyscribe-v1_12_5".url = "path:./v1_12_5";
  inputs."hastyscribe-v1_2_0".url = "path:./v1_2_0";
  inputs."hastyscribe-v1_2_1".url = "path:./v1_2_1";
  inputs."hastyscribe-v1_3_0".url = "path:./v1_3_0";
  inputs."hastyscribe-v1_4_0".url = "path:./v1_4_0";
  inputs."hastyscribe-v1_5_0".url = "path:./v1_5_0";
  inputs."hastyscribe-v1_6_0".url = "path:./v1_6_0";
  inputs."hastyscribe-v1_7_0".url = "path:./v1_7_0";
  inputs."hastyscribe-v1_7_1".url = "path:./v1_7_1";
  inputs."hastyscribe-v1_8_0".url = "path:./v1_8_0";
  inputs."hastyscribe-v1_9_0".url = "path:./v1_9_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}