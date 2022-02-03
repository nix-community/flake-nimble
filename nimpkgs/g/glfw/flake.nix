{
  description = ''A high-level GLFW 3 wrapper'';
  inputs."glfw-master".url = "path:./master";
  inputs."glfw-v0_2_0".url = "path:./v0_2_0";
  inputs."glfw-v0_2_1".url = "path:./v0_2_1";
  inputs."glfw-v0_3_0".url = "path:./v0_3_0";
  inputs."glfw-v0_3_1".url = "path:./v0_3_1";
  inputs."glfw-v3_3_0_0".url = "path:./v3_3_0_0";
  inputs."glfw-v3_3_0_1".url = "path:./v3_3_0_1";
  inputs."glfw-v3_3_0_2".url = "path:./v3_3_0_2";
  inputs."glfw-v3_3_0_3".url = "path:./v3_3_0_3";
  inputs."glfw-v3_3_2_1".url = "path:./v3_3_2_1";
  inputs."glfw-v3_3_4_0".url = "path:./v3_3_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}