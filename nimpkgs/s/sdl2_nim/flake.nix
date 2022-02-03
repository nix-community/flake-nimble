{
  description = ''Wrapper of the SDL 2 library for the Nim language.'';
  inputs."sdl2_nim-master".url = "path:./master";
  inputs."sdl2_nim-v0_95".url = "path:./v0_95";
  inputs."sdl2_nim-v0_96".url = "path:./v0_96";
  inputs."sdl2_nim-v2_0_10_0".url = "path:./v2_0_10_0";
  inputs."sdl2_nim-v2_0_12_0".url = "path:./v2_0_12_0";
  inputs."sdl2_nim-v2_0_12_1".url = "path:./v2_0_12_1";
  inputs."sdl2_nim-v2_0_14_0".url = "path:./v2_0_14_0";
  inputs."sdl2_nim-v2_0_14_2".url = "path:./v2_0_14_2";
  inputs."sdl2_nim-v2_0_14_2-legacy".url = "path:./v2_0_14_2-legacy";
  inputs."sdl2_nim-v2_0_14_3".url = "path:./v2_0_14_3";
  inputs."sdl2_nim-v2_0_14_3-legacy".url = "path:./v2_0_14_3-legacy";
  inputs."sdl2_nim-v2_0_5_0".url = "path:./v2_0_5_0";
  inputs."sdl2_nim-v2_0_6_0".url = "path:./v2_0_6_0";
  inputs."sdl2_nim-v2_0_6_1".url = "path:./v2_0_6_1";
  inputs."sdl2_nim-v2_0_7_0".url = "path:./v2_0_7_0";
  inputs."sdl2_nim-v2_0_7_1".url = "path:./v2_0_7_1";
  inputs."sdl2_nim-v2_0_8_0".url = "path:./v2_0_8_0";
  inputs."sdl2_nim-v2_0_9_0".url = "path:./v2_0_9_0";
  inputs."sdl2_nim-v2_0_9_1".url = "path:./v2_0_9_1";
  inputs."sdl2_nim-v2_0_9_2".url = "path:./v2_0_9_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}