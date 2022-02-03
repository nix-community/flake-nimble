{
  description = ''MathExpr - pure-Nim mathematical expression evaluator library'';
  inputs."mathexpr-master".url = "path:./master";
  inputs."mathexpr-1_2_0".url = "path:./1_2_0";
  inputs."mathexpr-1_3_0".url = "path:./1_3_0";
  inputs."mathexpr-1_3_1".url = "path:./1_3_1";
  inputs."mathexpr-1_3_2".url = "path:./1_3_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}