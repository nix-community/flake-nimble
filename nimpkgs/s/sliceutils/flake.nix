{
  description = ''Utilities for and extensions to Slice/HSlice'';
  inputs."sliceutils-master".url = "path:./master";
  inputs."sliceutils-0_1_0".url = "path:./0_1_0";
  inputs."sliceutils-v0_1_0".url = "path:./v0_1_0";
  inputs."sliceutils-v0_1_1".url = "path:./v0_1_1";
  inputs."sliceutils-v0_1_12".url = "path:./v0_1_12";
  inputs."sliceutils-v0_1_2".url = "path:./v0_1_2";
  inputs."sliceutils-v0_2_0".url = "path:./v0_2_0";
  inputs."sliceutils-v0_2_1".url = "path:./v0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}