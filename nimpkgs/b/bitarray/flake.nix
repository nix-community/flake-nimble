{
  description = ''mmap-backed bitarray implementation in Nim.'';
  inputs."bitarray-master".url = "path:./master";
  inputs."bitarray-v0_1_1".url = "path:./v0_1_1";
  inputs."bitarray-v0_1_2".url = "path:./v0_1_2";
  inputs."bitarray-v0_1_3".url = "path:./v0_1_3";
  inputs."bitarray-v0_1_4".url = "path:./v0_1_4";
  inputs."bitarray-v0_2_0".url = "path:./v0_2_0";
  inputs."bitarray-v0_2_1".url = "path:./v0_2_1";
  inputs."bitarray-v0_2_2".url = "path:./v0_2_2";
  inputs."bitarray-v0_2_3".url = "path:./v0_2_3";
  inputs."bitarray-v0_2_4".url = "path:./v0_2_4";
  inputs."bitarray-v0_2_5".url = "path:./v0_2_5";
  inputs."bitarray-v0_2_6".url = "path:./v0_2_6";
  inputs."bitarray-v0_3_0".url = "path:./v0_3_0";
  inputs."bitarray-v0_4_0".url = "path:./v0_4_0";
  inputs."bitarray-v0_5_0".url = "path:./v0_5_0";
  inputs."bitarray-v0_6_0".url = "path:./v0_6_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}