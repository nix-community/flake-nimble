{
  description = ''Elegant optional types'';
  inputs."questionable-main".url = "path:./main";
  inputs."questionable-0_1_0".url = "path:./0_1_0";
  inputs."questionable-0_10_0".url = "path:./0_10_0";
  inputs."questionable-0_10_2".url = "path:./0_10_2";
  inputs."questionable-0_2_0".url = "path:./0_2_0";
  inputs."questionable-0_3_0".url = "path:./0_3_0";
  inputs."questionable-0_4_0".url = "path:./0_4_0";
  inputs."questionable-0_4_1".url = "path:./0_4_1";
  inputs."questionable-0_4_2".url = "path:./0_4_2";
  inputs."questionable-0_4_3".url = "path:./0_4_3";
  inputs."questionable-0_5_0".url = "path:./0_5_0";
  inputs."questionable-0_6_0".url = "path:./0_6_0";
  inputs."questionable-0_6_1".url = "path:./0_6_1";
  inputs."questionable-0_6_2".url = "path:./0_6_2";
  inputs."questionable-0_6_3".url = "path:./0_6_3";
  inputs."questionable-0_7_0".url = "path:./0_7_0";
  inputs."questionable-0_8_0".url = "path:./0_8_0";
  inputs."questionable-0_9_0".url = "path:./0_9_0";
  inputs."questionable-0_9_1".url = "path:./0_9_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}