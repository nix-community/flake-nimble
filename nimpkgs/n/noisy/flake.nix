{
  description = ''SIMD-accelerated noise generation (Simplex, Perlin).'';
  inputs."noisy-master".url = "path:./master";
  inputs."noisy-0_1_0".url = "path:./0_1_0";
  inputs."noisy-0_2_0".url = "path:./0_2_0";
  inputs."noisy-0_2_1".url = "path:./0_2_1";
  inputs."noisy-0_3_0".url = "path:./0_3_0";
  inputs."noisy-0_4_2".url = "path:./0_4_2";
  inputs."noisy-0_4_3".url = "path:./0_4_3";
  inputs."noisy-0_4_4".url = "path:./0_4_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}