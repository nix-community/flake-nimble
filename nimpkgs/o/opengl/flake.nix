{
  description = ''High-level and low-level wrapper for OpenGL'';
  inputs."opengl-master".url = "path:./master";
  inputs."opengl-1_0".url = "path:./1_0";
  inputs."opengl-1_0_1".url = "path:./1_0_1";
  inputs."opengl-1_1_0".url = "path:./1_1_0";
  inputs."opengl-1_2_0".url = "path:./1_2_0";
  inputs."opengl-1_2_3".url = "path:./1_2_3";
  inputs."opengl-1_2_4".url = "path:./1_2_4";
  inputs."opengl-1_2_5".url = "path:./1_2_5";
  inputs."opengl-1_2_6".url = "path:./1_2_6";
  inputs."opengl-v1_2_2".url = "path:./v1_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}