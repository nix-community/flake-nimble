{
  description = ''Static GLFW for nim'';
  inputs."staticglfw-master".url = "path:./master";
  inputs."staticglfw-4_0_1".url = "path:./4_0_1";
  inputs."staticglfw-4_1_0".url = "path:./4_1_0";
  inputs."staticglfw-4_1_1".url = "path:./4_1_1";
  inputs."staticglfw-4_1_2".url = "path:./4_1_2";
  inputs."staticglfw-4_1_3".url = "path:./4_1_3";
  inputs."staticglfw-v0_2_0".url = "path:./v0_2_0";
  inputs."staticglfw-v0_2_1".url = "path:./v0_2_1";
  inputs."staticglfw-v0_3_0".url = "path:./v0_3_0";
  inputs."staticglfw-v0_3_1".url = "path:./v0_3_1";
  inputs."staticglfw-v3_3_0_0".url = "path:./v3_3_0_0";
  inputs."staticglfw-v3_3_0_1".url = "path:./v3_3_0_1";
  inputs."staticglfw-v3_3_0_2".url = "path:./v3_3_0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}