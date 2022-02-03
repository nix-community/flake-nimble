{
  description = ''A simple MurmurHash3 wrapper for Nim'';
  inputs."murmur3-master".url = "path:./master";
  inputs."murmur3-v0_1_0".url = "path:./v0_1_0";
  inputs."murmur3-v0_1_1".url = "path:./v0_1_1";
  inputs."murmur3-v0_1_2".url = "path:./v0_1_2";
  inputs."murmur3-v0_1_3".url = "path:./v0_1_3";
  inputs."murmur3-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}