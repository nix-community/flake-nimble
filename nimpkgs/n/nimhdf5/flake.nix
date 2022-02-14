{
  description = ''Bindings for the HDF5 data format C library'';
  inputs."nimhdf5-master".url = "path:./master";
  inputs."nimhdf5-v0_2_10".url = "path:./v0_2_10";
  inputs."nimhdf5-v0_2_11".url = "path:./v0_2_11";
  inputs."nimhdf5-v0_2_12".url = "path:./v0_2_12";
  inputs."nimhdf5-v0_2_13".url = "path:./v0_2_13";
  inputs."nimhdf5-v0_2_14".url = "path:./v0_2_14";
  inputs."nimhdf5-v0_2_15".url = "path:./v0_2_15";
  inputs."nimhdf5-v0_2_6".url = "path:./v0_2_6";
  inputs."nimhdf5-v0_2_7".url = "path:./v0_2_7";
  inputs."nimhdf5-v0_2_8".url = "path:./v0_2_8";
  inputs."nimhdf5-v0_2_9".url = "path:./v0_2_9";
  inputs."nimhdf5-v0_3_0".url = "path:./v0_3_0";
  inputs."nimhdf5-v0_3_1".url = "path:./v0_3_1";
  inputs."nimhdf5-v0_3_10".url = "path:./v0_3_10";
  inputs."nimhdf5-v0_3_11".url = "path:./v0_3_11";
  inputs."nimhdf5-v0_3_12".url = "path:./v0_3_12";
  inputs."nimhdf5-v0_3_13".url = "path:./v0_3_13";
  inputs."nimhdf5-v0_3_14".url = "path:./v0_3_14";
  inputs."nimhdf5-v0_3_15".url = "path:./v0_3_15";
  inputs."nimhdf5-v0_3_2".url = "path:./v0_3_2";
  inputs."nimhdf5-v0_3_3".url = "path:./v0_3_3";
  inputs."nimhdf5-v0_3_4".url = "path:./v0_3_4";
  inputs."nimhdf5-v0_3_5".url = "path:./v0_3_5";
  inputs."nimhdf5-v0_3_8".url = "path:./v0_3_8";
  inputs."nimhdf5-v0_3_9".url = "path:./v0_3_9";
  inputs."nimhdf5-v0_4_0".url = "path:./v0_4_0";
  inputs."nimhdf5-v0_4_1".url = "path:./v0_4_1";
  inputs."nimhdf5-v0_4_2".url = "path:./v0_4_2";
  inputs."nimhdf5-v0_4_3".url = "path:./v0_4_3";
  inputs."nimhdf5-v0_4_4".url = "path:./v0_4_4";
  inputs."nimhdf5-v0_4_5".url = "path:./v0_4_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}