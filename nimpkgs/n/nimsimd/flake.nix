{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';
  inputs."nimsimd-master".url = "path:./master";
  inputs."nimsimd-0_4_0".url = "path:./0_4_0";
  inputs."nimsimd-0_4_1".url = "path:./0_4_1";
  inputs."nimsimd-0_4_2".url = "path:./0_4_2";
  inputs."nimsimd-0_4_3".url = "path:./0_4_3";
  inputs."nimsimd-0_4_4".url = "path:./0_4_4";
  inputs."nimsimd-0_4_5".url = "path:./0_4_5";
  inputs."nimsimd-0_4_6".url = "path:./0_4_6";
  inputs."nimsimd-0_4_7".url = "path:./0_4_7";
  inputs."nimsimd-0_4_8".url = "path:./0_4_8";
  inputs."nimsimd-0_4_9".url = "path:./0_4_9";
  inputs."nimsimd-1_0_0".url = "path:./1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}