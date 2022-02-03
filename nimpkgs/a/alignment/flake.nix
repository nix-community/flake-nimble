{
  description = ''alignment is a library to align strings.'';
  inputs."alignment-master".url = "path:./master";
  inputs."alignment-1_0_0".url = "path:./1_0_0";
  inputs."alignment-1_1_0".url = "path:./1_1_0";
  inputs."alignment-v1_1_1".url = "path:./v1_1_1";
  inputs."alignment-v1_1_2".url = "path:./v1_1_2";
  inputs."alignment-v1_2_0".url = "path:./v1_2_0";
  inputs."alignment-v1_2_1".url = "path:./v1_2_1";
  inputs."alignment-v1_3_0".url = "path:./v1_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}