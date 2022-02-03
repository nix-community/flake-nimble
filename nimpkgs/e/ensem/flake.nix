{
  description = ''Support for ensemble file format and arithmetic using jackknife/bootstrap propagation of errors'';
  inputs."ensem-master".url = "path:./master";
  inputs."ensem-v1_0_0".url = "path:./v1_0_0";
  inputs."ensem-v1_1_0".url = "path:./v1_1_0";
  inputs."ensem-v1_2_1".url = "path:./v1_2_1";
  inputs."ensem-v1_2_2".url = "path:./v1_2_2";
  inputs."ensem-v1_3_0".url = "path:./v1_3_0";
  inputs."ensem-v1_3_1".url = "path:./v1_3_1";
  inputs."ensem-v1_3_2".url = "path:./v1_3_2";
  inputs."ensem-v1_4_0".url = "path:./v1_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}