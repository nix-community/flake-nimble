{
  description = ''Simple AST in NIM'';
  inputs."simpleAST-develop".url = "path:./develop";
  inputs."simpleAST-master".url = "path:./master";
  inputs."simpleAST-0_0_0".url = "path:./0_0_0";
  inputs."simpleAST-0_1_0".url = "path:./0_1_0";
  inputs."simpleAST-1_1_0".url = "path:./1_1_0";
  inputs."simpleAST-1_1_1".url = "path:./1_1_1";
  inputs."simpleAST-1_1_2".url = "path:./1_1_2";
  inputs."simpleAST-1_1_3".url = "path:./1_1_3";
  inputs."simpleAST-1_1_4".url = "path:./1_1_4";
  inputs."simpleAST-1_1_5".url = "path:./1_1_5";
  inputs."simpleAST-1_1_6".url = "path:./1_1_6";
  inputs."simpleAST-1_2_0".url = "path:./1_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}