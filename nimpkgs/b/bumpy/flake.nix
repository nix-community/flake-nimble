{
  description = ''2d collision library for Nim.'';
  inputs."bumpy-master".url = "path:./master";
  inputs."bumpy-0_1_0".url = "path:./0_1_0";
  inputs."bumpy-0_2_0".url = "path:./0_2_0";
  inputs."bumpy-0_2_1".url = "path:./0_2_1";
  inputs."bumpy-1_0_0".url = "path:./1_0_0";
  inputs."bumpy-1_0_1".url = "path:./1_0_1";
  inputs."bumpy-1_0_2".url = "path:./1_0_2";
  inputs."bumpy-1_0_3".url = "path:./1_0_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}