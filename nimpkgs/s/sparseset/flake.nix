{
  description = ''Sparsets for Nim'';
  inputs."sparseset-main".url = "path:./main";
  inputs."sparseset-v0_1_0".url = "path:./v0_1_0";
  inputs."sparseset-v0_3_0".url = "path:./v0_3_0";
  inputs."sparseset-v0_3_1".url = "path:./v0_3_1";
  inputs."sparseset-v0_3_2".url = "path:./v0_3_2";
  inputs."sparseset-v0_4_0".url = "path:./v0_4_0";
  inputs."sparseset-v0_5_0".url = "path:./v0_5_0";
  inputs."sparseset-v0_6_0".url = "path:./v0_6_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}