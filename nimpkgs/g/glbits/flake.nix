{
  description = ''A light interface and selection of utilities for working with OpenGL and SDL2'';
  inputs."glbits-master".url = "path:./master";
  inputs."glbits-0_1_0".url = "path:./0_1_0";
  inputs."glbits-v0_1_1".url = "path:./v0_1_1";
  inputs."glbits-v0_1_2".url = "path:./v0_1_2";
  inputs."glbits-v0_1_3".url = "path:./v0_1_3";
  inputs."glbits-v0_1_4".url = "path:./v0_1_4";
  inputs."glbits-v0_1_5".url = "path:./v0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}