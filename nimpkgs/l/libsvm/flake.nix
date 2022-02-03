{
  description = ''libsvm wrapper for Nim'';
  inputs."libsvm-master".url = "path:./master";
  inputs."libsvm-v0_1_1".url = "path:./v0_1_1";
  inputs."libsvm-v0_1_2".url = "path:./v0_1_2";
  inputs."libsvm-v0_1_3".url = "path:./v0_1_3";
  inputs."libsvm-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}