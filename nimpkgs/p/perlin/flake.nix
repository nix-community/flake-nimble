{
  description = ''Perlin noise and Simplex noise generation'';
  inputs."perlin-master".url = "path:./master";
  inputs."perlin-0_1_0".url = "path:./0_1_0";
  inputs."perlin-0_2_0".url = "path:./0_2_0";
  inputs."perlin-0_3_0".url = "path:./0_3_0";
  inputs."perlin-0_4_0".url = "path:./0_4_0";
  inputs."perlin-0_5_0".url = "path:./0_5_0";
  inputs."perlin-0_6_0".url = "path:./0_6_0";
  inputs."perlin-0_6_1".url = "path:./0_6_1";
  inputs."perlin-0_7_0".url = "path:./0_7_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}