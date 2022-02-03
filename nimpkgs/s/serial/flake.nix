{
  description = ''A library to operate serial ports using pure Nim.'';
  inputs."serial-master".url = "path:./master";
  inputs."serial-v0_1_0".url = "path:./v0_1_0";
  inputs."serial-v1_0_0".url = "path:./v1_0_0";
  inputs."serial-v1_1_0".url = "path:./v1_1_0";
  inputs."serial-v1_1_1".url = "path:./v1_1_1";
  inputs."serial-v1_1_2".url = "path:./v1_1_2";
  inputs."serial-v1_1_3".url = "path:./v1_1_3";
  inputs."serial-v1_1_4".url = "path:./v1_1_4";
  inputs."serial-v1_1_5".url = "path:./v1_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}