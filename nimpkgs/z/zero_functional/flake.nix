{
  description = ''A library providing zero-cost chaining for functional abstractions in Nim'';
  inputs."zero_functional-master".url = "path:./master";
  inputs."zero_functional-v0_0_1".url = "path:./v0_0_1";
  inputs."zero_functional-v0_0_2".url = "path:./v0_0_2";
  inputs."zero_functional-v0_0_3".url = "path:./v0_0_3";
  inputs."zero_functional-v0_0_6".url = "path:./v0_0_6";
  inputs."zero_functional-v0_0_7".url = "path:./v0_0_7";
  inputs."zero_functional-v0_1_0".url = "path:./v0_1_0";
  inputs."zero_functional-v0_1_1".url = "path:./v0_1_1";
  inputs."zero_functional-v0_2_0".url = "path:./v0_2_0";
  inputs."zero_functional-v0_3_0".url = "path:./v0_3_0";
  inputs."zero_functional-v1_0_0".url = "path:./v1_0_0";
  inputs."zero_functional-v1_0_1".url = "path:./v1_0_1";
  inputs."zero_functional-v1_1_0".url = "path:./v1_1_0";
  inputs."zero_functional-v1_1_1".url = "path:./v1_1_1";
  inputs."zero_functional-v1_2_0".url = "path:./v1_2_0";
  inputs."zero_functional-v1_2_1".url = "path:./v1_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}