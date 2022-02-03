{
  description = ''Swift-like unicode string handling'';
  inputs."strunicode-master".url = "path:./master";
  inputs."strunicode-v0_1".url = "path:./v0_1";
  inputs."strunicode-v0_2_0".url = "path:./v0_2_0";
  inputs."strunicode-v0_3_0".url = "path:./v0_3_0";
  inputs."strunicode-v0_4_0".url = "path:./v0_4_0";
  inputs."strunicode-v0_5_0".url = "path:./v0_5_0";
  inputs."strunicode-v0_6_0".url = "path:./v0_6_0";
  inputs."strunicode-v0_6_1".url = "path:./v0_6_1";
  inputs."strunicode-v0_7_0".url = "path:./v0_7_0";
  inputs."strunicode-v0_7_1".url = "path:./v0_7_1";
  inputs."strunicode-v0_8_0".url = "path:./v0_8_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}