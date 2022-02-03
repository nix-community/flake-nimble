{
  description = ''Nim Game Library'';
  inputs."nimgl-master".url = "path:./master";
  inputs."nimgl-0_1_0".url = "path:./0_1_0";
  inputs."nimgl-0_2_0".url = "path:./0_2_0";
  inputs."nimgl-0_2_1".url = "path:./0_2_1";
  inputs."nimgl-0_2_2".url = "path:./0_2_2";
  inputs."nimgl-0_3_0".url = "path:./0_3_0";
  inputs."nimgl-0_3_1".url = "path:./0_3_1";
  inputs."nimgl-0_3_2".url = "path:./0_3_2";
  inputs."nimgl-0_3_3".url = "path:./0_3_3";
  inputs."nimgl-0_3_4".url = "path:./0_3_4";
  inputs."nimgl-0_3_5".url = "path:./0_3_5";
  inputs."nimgl-0_3_6".url = "path:./0_3_6";
  inputs."nimgl-0_3_7".url = "path:./0_3_7";
  inputs."nimgl-1_0_0".url = "path:./1_0_0";
  inputs."nimgl-1_0_1".url = "path:./1_0_1";
  inputs."nimgl-1_1_0".url = "path:./1_1_0";
  inputs."nimgl-1_1_1".url = "path:./1_1_1";
  inputs."nimgl-1_1_10".url = "path:./1_1_10";
  inputs."nimgl-1_1_2".url = "path:./1_1_2";
  inputs."nimgl-1_1_3".url = "path:./1_1_3";
  inputs."nimgl-1_1_4".url = "path:./1_1_4";
  inputs."nimgl-1_1_5".url = "path:./1_1_5";
  inputs."nimgl-1_1_6".url = "path:./1_1_6";
  inputs."nimgl-1_1_7".url = "path:./1_1_7";
  inputs."nimgl-1_1_8".url = "path:./1_1_8";
  inputs."nimgl-1_1_9".url = "path:./1_1_9";
  inputs."nimgl-1_2_0".url = "path:./1_2_0";
  inputs."nimgl-1_3_0".url = "path:./1_3_0";
  inputs."nimgl-1_3_1".url = "path:./1_3_1";
  inputs."nimgl-1_3_2".url = "path:./1_3_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}