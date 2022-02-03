{
  description = ''Figma based UI library for nim, with HTML and OpenGL backends.'';
  inputs."fidget-master".url = "path:./master";
  inputs."fidget-0_2_1".url = "path:./0_2_1";
  inputs."fidget-0_3_0".url = "path:./0_3_0";
  inputs."fidget-0_3_1".url = "path:./0_3_1";
  inputs."fidget-0_3_2".url = "path:./0_3_2";
  inputs."fidget-0_4_0".url = "path:./0_4_0";
  inputs."fidget-0_4_1".url = "path:./0_4_1";
  inputs."fidget-0_4_2".url = "path:./0_4_2";
  inputs."fidget-0_4_3".url = "path:./0_4_3";
  inputs."fidget-0_5_0".url = "path:./0_5_0";
  inputs."fidget-0_6_0".url = "path:./0_6_0";
  inputs."fidget-0_6_1".url = "path:./0_6_1";
  inputs."fidget-0_6_2".url = "path:./0_6_2";
  inputs."fidget-0_6_3".url = "path:./0_6_3";
  inputs."fidget-0_6_4".url = "path:./0_6_4";
  inputs."fidget-0_7_0".url = "path:./0_7_0";
  inputs."fidget-0_7_1".url = "path:./0_7_1";
  inputs."fidget-0_7_3".url = "path:./0_7_3";
  inputs."fidget-0_7_4".url = "path:./0_7_4";
  inputs."fidget-0_7_5".url = "path:./0_7_5";
  inputs."fidget-0_7_7".url = "path:./0_7_7";
  inputs."fidget-0_7_8".url = "path:./0_7_8";
  inputs."fidget-0_7_9".url = "path:./0_7_9";
  inputs."fidget-v0_2_1".url = "path:./v0_2_1";
  inputs."fidget-v0_3_1".url = "path:./v0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}