{
  description = ''Implement dynamic dispatch through vtable, should works for dynlib.'';
  
  inputs."vtable-v0_1_0".url = "path:./v0_1_0";
  inputs."vtable-v0_1_1".url = "path:./v0_1_1";
  inputs."vtable-v0_1_2".url = "path:./v0_1_2";
  inputs."vtable-v0_2_0".url = "path:./v0_2_0";
  inputs."vtable-v0_2_1".url = "path:./v0_2_1";
  inputs."vtable-v0_3_0".url = "path:./v0_3_0";
  inputs."vtable-v0_3_1".url = "path:./v0_3_1";
  inputs."vtable-v0_3_2".url = "path:./v0_3_2";
  inputs."vtable-v0_3_3".url = "path:./v0_3_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}