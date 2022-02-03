{
  description = ''Mustache templating for Nim.'';
  inputs."moustachu-master".url = "path:./master";
  inputs."moustachu-0_10_0".url = "path:./0_10_0";
  inputs."moustachu-0_10_1".url = "path:./0_10_1";
  inputs."moustachu-0_10_2".url = "path:./0_10_2";
  inputs."moustachu-0_10_3".url = "path:./0_10_3";
  inputs."moustachu-0_11_1".url = "path:./0_11_1";
  inputs."moustachu-0_12_0".url = "path:./0_12_0";
  inputs."moustachu-0_13_0".url = "path:./0_13_0";
  inputs."moustachu-0_14_0".url = "path:./0_14_0";
  inputs."moustachu-0_2_0".url = "path:./0_2_0";
  inputs."moustachu-0_3_0".url = "path:./0_3_0";
  inputs."moustachu-0_3_3".url = "path:./0_3_3";
  inputs."moustachu-0_4_0".url = "path:./0_4_0";
  inputs."moustachu-0_6_0".url = "path:./0_6_0";
  inputs."moustachu-0_7_0".url = "path:./0_7_0";
  inputs."moustachu-0_8_0".url = "path:./0_8_0";
  inputs."moustachu-0_8_1".url = "path:./0_8_1";
  inputs."moustachu-0_9_0".url = "path:./0_9_0";
  inputs."moustachu-0_9_1".url = "path:./0_9_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}