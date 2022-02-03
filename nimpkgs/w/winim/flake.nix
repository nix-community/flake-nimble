{
  description = ''Nim's Windows API and COM Library'';
  inputs."winim-master".url = "path:./master";
  inputs."winim-3_6_0".url = "path:./3_6_0";
  inputs."winim-3_6_1".url = "path:./3_6_1";
  inputs."winim-3_7_0".url = "path:./3_7_0";
  inputs."winim-3_7_1".url = "path:./3_7_1";
  inputs."winim-3_7_2".url = "path:./3_7_2";
  inputs."winim-3_8_0".url = "path:./3_8_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}