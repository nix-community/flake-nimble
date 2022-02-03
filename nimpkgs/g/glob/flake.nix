{
  description = ''Pure library for matching file paths against Unix style glob patterns.'';
  inputs."glob-master".url = "path:./master";
  inputs."glob-v0_1_0".url = "path:./v0_1_0";
  inputs."glob-v0_10_0".url = "path:./v0_10_0";
  inputs."glob-v0_11_0".url = "path:./v0_11_0";
  inputs."glob-v0_11_1".url = "path:./v0_11_1";
  inputs."glob-v0_2_0".url = "path:./v0_2_0";
  inputs."glob-v0_3_0".url = "path:./v0_3_0";
  inputs."glob-v0_3_1".url = "path:./v0_3_1";
  inputs."glob-v0_4_0".url = "path:./v0_4_0";
  inputs."glob-v0_5_0".url = "path:./v0_5_0";
  inputs."glob-v0_6_0".url = "path:./v0_6_0";
  inputs."glob-v0_7_0".url = "path:./v0_7_0";
  inputs."glob-v0_8_0".url = "path:./v0_8_0";
  inputs."glob-v0_8_1".url = "path:./v0_8_1";
  inputs."glob-v0_9_0".url = "path:./v0_9_0";
  inputs."glob-v0_9_0-doc".url = "path:./v0_9_0-doc";
  inputs."glob-v0_9_1".url = "path:./v0_9_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}