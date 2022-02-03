{
  description = ''Wrapper for SDL 2.x'';
  inputs."sdl2-master".url = "path:./master";
  inputs."sdl2-v2_0".url = "path:./v2_0";
  inputs."sdl2-v2_0_1".url = "path:./v2_0_1";
  inputs."sdl2-v2_0_2".url = "path:./v2_0_2";
  inputs."sdl2-v2_0_3".url = "path:./v2_0_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}