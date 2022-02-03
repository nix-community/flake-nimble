{
  description = ''Collection of math routines for 2d and 3d graphics.'';
  inputs."vmath-master".url = "path:./master";
  inputs."vmath-0_2_2".url = "path:./0_2_2";
  inputs."vmath-0_3_0".url = "path:./0_3_0";
  inputs."vmath-0_3_1".url = "path:./0_3_1";
  inputs."vmath-0_3_2".url = "path:./0_3_2";
  inputs."vmath-0_3_3".url = "path:./0_3_3";
  inputs."vmath-0_4_0".url = "path:./0_4_0";
  inputs."vmath-0_4_1".url = "path:./0_4_1";
  inputs."vmath-0_5_0".url = "path:./0_5_0";
  inputs."vmath-1_0_0".url = "path:./1_0_0";
  inputs."vmath-1_0_1".url = "path:./1_0_1";
  inputs."vmath-1_0_10".url = "path:./1_0_10";
  inputs."vmath-1_0_11".url = "path:./1_0_11";
  inputs."vmath-1_0_2".url = "path:./1_0_2";
  inputs."vmath-1_0_3".url = "path:./1_0_3";
  inputs."vmath-1_0_4".url = "path:./1_0_4";
  inputs."vmath-1_0_5".url = "path:./1_0_5";
  inputs."vmath-1_0_6".url = "path:./1_0_6";
  inputs."vmath-1_0_7".url = "path:./1_0_7";
  inputs."vmath-1_0_8".url = "path:./1_0_8";
  inputs."vmath-1_0_9".url = "path:./1_0_9";
  inputs."vmath-1_1_0".url = "path:./1_1_0";
  inputs."vmath-1_1_1".url = "path:./1_1_1";
  inputs."vmath-v0_2_2".url = "path:./v0_2_2";
  inputs."vmath-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}