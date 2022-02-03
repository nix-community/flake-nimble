{
  description = ''Small wrapper for SystemVerilog DPI-C header svdpi.h'';
  inputs."svdpi-master".url = "path:./master";
  inputs."svdpi-v0_1_1".url = "path:./v0_1_1";
  inputs."svdpi-v0_2_0".url = "path:./v0_2_0";
  inputs."svdpi-v0_2_1".url = "path:./v0_2_1";
  inputs."svdpi-v0_3_0".url = "path:./v0_3_0";
  inputs."svdpi-v0_4_0".url = "path:./v0_4_0";
  inputs."svdpi-v0_5_0".url = "path:./v0_5_0";
  inputs."svdpi-v0_5_1".url = "path:./v0_5_1";
  inputs."svdpi-v0_5_2".url = "path:./v0_5_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}