{
  description = ''A macro for generating [de]serializers for given objects'';
  inputs."nesm-master".url = "path:./master";
  inputs."nesm-v0_1_0".url = "path:./v0_1_0";
  inputs."nesm-v0_2_0".url = "path:./v0_2_0";
  inputs."nesm-v0_3_0".url = "path:./v0_3_0";
  inputs."nesm-v0_3_1".url = "path:./v0_3_1";
  inputs."nesm-v0_3_2".url = "path:./v0_3_2";
  inputs."nesm-v0_4_0".url = "path:./v0_4_0";
  inputs."nesm-v0_4_1".url = "path:./v0_4_1";
  inputs."nesm-v0_4_2".url = "path:./v0_4_2";
  inputs."nesm-v0_4_3".url = "path:./v0_4_3";
  inputs."nesm-v0_4_4".url = "path:./v0_4_4";
  inputs."nesm-v0_4_5".url = "path:./v0_4_5";
  inputs."nesm-v0_4_6".url = "path:./v0_4_6";
  inputs."nesm-v0_4_7".url = "path:./v0_4_7";
  inputs."nesm-v0_4_8".url = "path:./v0_4_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}