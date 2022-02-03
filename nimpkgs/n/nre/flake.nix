{
  description = ''A better regular expression library'';
  inputs."nre-master".url = "path:./master";
  inputs."nre-0_1_0".url = "path:./0_1_0";
  inputs."nre-0_2_0".url = "path:./0_2_0";
  inputs."nre-0_3_0".url = "path:./0_3_0";
  inputs."nre-0_3_1".url = "path:./0_3_1";
  inputs."nre-0_4_0".url = "path:./0_4_0";
  inputs."nre-0_5_0".url = "path:./0_5_0";
  inputs."nre-0_6_0".url = "path:./0_6_0";
  inputs."nre-0_6_1".url = "path:./0_6_1";
  inputs."nre-1_0_0".url = "path:./1_0_0";
  inputs."nre-2_0_0".url = "path:./2_0_0";
  inputs."nre-2_0_1".url = "path:./2_0_1";
  inputs."nre-2_0_2".url = "path:./2_0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}