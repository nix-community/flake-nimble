{
  description = ''A high-level image I/O and manipulation library for Nim.'';
  inputs."inumon-master".url = "path:./master";
  inputs."inumon-v0_1_2".url = "path:./v0_1_2";
  inputs."inumon-v0_2_2".url = "path:./v0_2_2";
  inputs."inumon-v0_2_3".url = "path:./v0_2_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}