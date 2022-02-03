{
  description = ''A wrapper for stb_image and stb_image_write.'';
  inputs."stb_image-master".url = "path:./master";
  inputs."stb_image-1_1".url = "path:./1_1";
  inputs."stb_image-1_2".url = "path:./1_2";
  inputs."stb_image-1_3".url = "path:./1_3";
  inputs."stb_image-1_4".url = "path:./1_4";
  inputs."stb_image-1_5".url = "path:./1_5";
  inputs."stb_image-1_6".url = "path:./1_6";
  inputs."stb_image-2_0".url = "path:./2_0";
  inputs."stb_image-2_1".url = "path:./2_1";
  inputs."stb_image-2_2".url = "path:./2_2";
  inputs."stb_image-2_3".url = "path:./2_3";
  inputs."stb_image-2_4".url = "path:./2_4";
  inputs."stb_image-2_5".url = "path:./2_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}