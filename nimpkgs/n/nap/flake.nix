{
  description = ''Argument parser'';
  inputs."nap-master".url = "path:./master";
  inputs."nap-0_5_1".url = "path:./0_5_1";
  inputs."nap-0_6_0".url = "path:./0_6_0";
  inputs."nap-0_7_0".url = "path:./0_7_0";
  inputs."nap-0_7_1".url = "path:./0_7_1";
  inputs."nap-0_8_0".url = "path:./0_8_0";
  inputs."nap-0_9_0".url = "path:./0_9_0";
  inputs."nap-0_9_1".url = "path:./0_9_1";
  inputs."nap-1_0_0".url = "path:./1_0_0";
  inputs."nap-1_0_1".url = "path:./1_0_1";
  inputs."nap-1_1_0".url = "path:./1_1_0";
  inputs."nap-1_2_0".url = "path:./1_2_0";
  inputs."nap-1_2_2".url = "path:./1_2_2";
  inputs."nap-1_2_3".url = "path:./1_2_3";
  inputs."nap-1_3_0".url = "path:./1_3_0";
  inputs."nap-1_3_1".url = "path:./1_3_1";
  inputs."nap-1_4_0".url = "path:./1_4_0";
  inputs."nap-1_4_1".url = "path:./1_4_1";
  inputs."nap-1_4_2".url = "path:./1_4_2";
  inputs."nap-1_5_1".url = "path:./1_5_1";
  inputs."nap-v1_2_1".url = "path:./v1_2_1";
  inputs."nap-v2_0_0".url = "path:./v2_0_0";
  inputs."nap-v3_0_0".url = "path:./v3_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}