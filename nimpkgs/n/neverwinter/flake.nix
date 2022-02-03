{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs."neverwinter-master".url = "path:./master";
  inputs."neverwinter-1_1_1".url = "path:./1_1_1";
  inputs."neverwinter-1_2_0".url = "path:./1_2_0";
  inputs."neverwinter-1_2_1".url = "path:./1_2_1";
  inputs."neverwinter-1_2_10".url = "path:./1_2_10";
  inputs."neverwinter-1_2_10-1_2_0".url = "path:./1_2_10-1_2_0";
  inputs."neverwinter-1_2_2".url = "path:./1_2_2";
  inputs."neverwinter-1_2_3".url = "path:./1_2_3";
  inputs."neverwinter-1_2_4".url = "path:./1_2_4";
  inputs."neverwinter-1_2_5".url = "path:./1_2_5";
  inputs."neverwinter-1_2_7".url = "path:./1_2_7";
  inputs."neverwinter-1_2_8".url = "path:./1_2_8";
  inputs."neverwinter-1_2_9".url = "path:./1_2_9";
  inputs."neverwinter-1_3_0".url = "path:./1_3_0";
  inputs."neverwinter-1_3_1".url = "path:./1_3_1";
  inputs."neverwinter-1_3_2".url = "path:./1_3_2";
  inputs."neverwinter-1_4_1".url = "path:./1_4_1";
  inputs."neverwinter-1_4_2".url = "path:./1_4_2";
  inputs."neverwinter-1_4_3".url = "path:./1_4_3";
  inputs."neverwinter-1_4_4".url = "path:./1_4_4";
  inputs."neverwinter-1_4_5".url = "path:./1_4_5";
  inputs."neverwinter-1_5_0".url = "path:./1_5_0";
  inputs."neverwinter-1_5_1".url = "path:./1_5_1";
  inputs."neverwinter-1_5_2".url = "path:./1_5_2";
  inputs."neverwinter-1_5_3".url = "path:./1_5_3";
  inputs."neverwinter-1_5_4".url = "path:./1_5_4";
  inputs."neverwinter-v1_0_0".url = "path:./v1_0_0";
  inputs."neverwinter-v1_0_1".url = "path:./v1_0_1";
  inputs."neverwinter-v1_1_0".url = "path:./v1_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}