{
  description = ''A highlighter for diff -u-like output & port of Python difflib'';
  inputs."hldiff-master".url = "path:./master";
  inputs."hldiff-v0_1".url = "path:./v0_1";
  inputs."hldiff-v0_2".url = "path:./v0_2";
  inputs."hldiff-v0_3".url = "path:./v0_3";
  inputs."hldiff-v0_4".url = "path:./v0_4";
  inputs."hldiff-v0_5".url = "path:./v0_5";
  inputs."hldiff-v0_6".url = "path:./v0_6";
  inputs."hldiff-v0_7".url = "path:./v0_7";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}