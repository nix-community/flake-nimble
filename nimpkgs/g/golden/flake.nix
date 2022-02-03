{
  description = ''a benchmark tool'';
  inputs."golden-master".url = "path:./master";
  inputs."golden-0_0_1".url = "path:./0_0_1";
  inputs."golden-1_0_1".url = "path:./1_0_1";
  inputs."golden-1_1_0".url = "path:./1_1_0";
  inputs."golden-1_1_2".url = "path:./1_1_2";
  inputs."golden-1_1_3".url = "path:./1_1_3";
  inputs."golden-2_0_0".url = "path:./2_0_0";
  inputs."golden-2_1_0".url = "path:./2_1_0";
  inputs."golden-2_2_0".url = "path:./2_2_0";
  inputs."golden-2_3_0".url = "path:./2_3_0";
  inputs."golden-2_3_1".url = "path:./2_3_1";
  inputs."golden-2_3_2".url = "path:./2_3_2";
  inputs."golden-2_4_0".url = "path:./2_4_0";
  inputs."golden-2_4_1".url = "path:./2_4_1";
  inputs."golden-2_5_1".url = "path:./2_5_1";
  inputs."golden-2_5_2".url = "path:./2_5_2";
  inputs."golden-3_0_0".url = "path:./3_0_0";
  inputs."golden-3_0_1".url = "path:./3_0_1";
  inputs."golden-3_0_10".url = "path:./3_0_10";
  inputs."golden-3_0_11".url = "path:./3_0_11";
  inputs."golden-3_0_12".url = "path:./3_0_12";
  inputs."golden-3_0_13".url = "path:./3_0_13";
  inputs."golden-3_0_14".url = "path:./3_0_14";
  inputs."golden-3_0_15".url = "path:./3_0_15";
  inputs."golden-3_0_2".url = "path:./3_0_2";
  inputs."golden-3_0_3".url = "path:./3_0_3";
  inputs."golden-3_0_4".url = "path:./3_0_4";
  inputs."golden-3_0_5".url = "path:./3_0_5";
  inputs."golden-3_0_6".url = "path:./3_0_6";
  inputs."golden-3_0_7".url = "path:./3_0_7";
  inputs."golden-3_0_8".url = "path:./3_0_8";
  inputs."golden-3_0_9".url = "path:./3_0_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}