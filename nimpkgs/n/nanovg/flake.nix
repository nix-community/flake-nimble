{
  description = ''Nim wrapper for the C NanoVG antialiased vector graphics rendering library for OpenGL'';
  inputs."nanovg-master".url = "path:./master";
  inputs."nanovg-v0_1_0".url = "path:./v0_1_0";
  inputs."nanovg-v0_2_0".url = "path:./v0_2_0";
  inputs."nanovg-v0_2_1".url = "path:./v0_2_1";
  inputs."nanovg-v0_2_2".url = "path:./v0_2_2";
  inputs."nanovg-v0_2_3".url = "path:./v0_2_3";
  inputs."nanovg-v0_3_0".url = "path:./v0_3_0";
  inputs."nanovg-v0_3_1".url = "path:./v0_3_1";
  inputs."nanovg-v0_3_2".url = "path:./v0_3_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}