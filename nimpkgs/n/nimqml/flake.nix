{
  description = ''Qt Qml bindings'';
  inputs."nimqml-master".url = "path:./master";
  inputs."nimqml-0_1_0".url = "path:./0_1_0";
  inputs."nimqml-0_2_0".url = "path:./0_2_0";
  inputs."nimqml-0_3_0".url = "path:./0_3_0";
  inputs."nimqml-0_4_5".url = "path:./0_4_5";
  inputs."nimqml-0_4_6".url = "path:./0_4_6";
  inputs."nimqml-0_4_7".url = "path:./0_4_7";
  inputs."nimqml-0_4_8".url = "path:./0_4_8";
  inputs."nimqml-0_5_0".url = "path:./0_5_0";
  inputs."nimqml-0_5_1".url = "path:./0_5_1";
  inputs."nimqml-0_5_2".url = "path:./0_5_2";
  inputs."nimqml-0_6_0".url = "path:./0_6_0";
  inputs."nimqml-0_7_0".url = "path:./0_7_0";
  inputs."nimqml-0_7_1".url = "path:./0_7_1";
  inputs."nimqml-0_7_2".url = "path:./0_7_2";
  inputs."nimqml-0_7_3".url = "path:./0_7_3";
  inputs."nimqml-0_7_4".url = "path:./0_7_4";
  inputs."nimqml-0_7_5".url = "path:./0_7_5";
  inputs."nimqml-0_7_6".url = "path:./0_7_6";
  inputs."nimqml-0_7_7".url = "path:./0_7_7";
  inputs."nimqml-0_8_0".url = "path:./0_8_0";
  inputs."nimqml-0_9_0".url = "path:./0_9_0";
  inputs."nimqml-0_9_1".url = "path:./0_9_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}