{
  description = ''A nim wrapper for ArrayFire'';
  inputs."ArrayFireNim-master".url = "path:./master";
  inputs."ArrayFireNim-v0_1_0".url = "path:./v0_1_0";
  inputs."ArrayFireNim-v0_2_0".url = "path:./v0_2_0";
  inputs."ArrayFireNim-v0_2_1".url = "path:./v0_2_1";
  inputs."ArrayFireNim-v0_2_2".url = "path:./v0_2_2";
  inputs."ArrayFireNim-v0_2_3".url = "path:./v0_2_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}