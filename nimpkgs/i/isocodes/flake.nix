{
  description = ''ISO codes for Nim.'';
  inputs."isocodes-master".url = "path:./master";
  inputs."isocodes-0_3_1".url = "path:./0_3_1";
  inputs."isocodes-1_0_0".url = "path:./1_0_0";
  inputs."isocodes-1_1_0".url = "path:./1_1_0";
  inputs."isocodes-1_1_1".url = "path:./1_1_1";
  inputs."isocodes-1_1_2".url = "path:./1_1_2";
  inputs."isocodes-1_1_3".url = "path:./1_1_3";
  inputs."isocodes-1_1_4".url = "path:./1_1_4";
  inputs."isocodes-1_1_5".url = "path:./1_1_5";
  inputs."isocodes-1_2_0".url = "path:./1_2_0";
  inputs."isocodes-1_4_0".url = "path:./1_4_0";
  inputs."isocodes-1_4_1".url = "path:./1_4_1";
  inputs."isocodes-1_5_0".url = "path:./1_5_0";
  inputs."isocodes-1_6_0".url = "path:./1_6_0";
  inputs."isocodes-1_6_2".url = "path:./1_6_2";
  inputs."isocodes-1_6_3".url = "path:./1_6_3";
  inputs."isocodes-1_6_4".url = "path:./1_6_4";
  inputs."isocodes-1_7_0".url = "path:./1_7_0";
  inputs."isocodes-1_7_1".url = "path:./1_7_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}