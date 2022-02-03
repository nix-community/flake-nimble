{
  description = ''Nim wrappers for tree-sitter parser grammars'';
  inputs."htsparse-master".url = "path:./master";
  inputs."htsparse-0_1_1".url = "path:./0_1_1";
  inputs."htsparse-0_1_10".url = "path:./0_1_10";
  inputs."htsparse-0_1_11".url = "path:./0_1_11";
  inputs."htsparse-0_1_12".url = "path:./0_1_12";
  inputs."htsparse-0_1_13".url = "path:./0_1_13";
  inputs."htsparse-0_1_14".url = "path:./0_1_14";
  inputs."htsparse-0_1_2".url = "path:./0_1_2";
  inputs."htsparse-0_1_3".url = "path:./0_1_3";
  inputs."htsparse-0_1_4".url = "path:./0_1_4";
  inputs."htsparse-0_1_5".url = "path:./0_1_5";
  inputs."htsparse-0_1_6".url = "path:./0_1_6";
  inputs."htsparse-0_1_7".url = "path:./0_1_7";
  inputs."htsparse-0_1_8".url = "path:./0_1_8";
  inputs."htsparse-0_1_9".url = "path:./0_1_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}