{
  description = ''AST for various languages'';
  inputs."hasts-master".url = "path:./master";
  inputs."hasts-v0_1_1".url = "path:./v0_1_1";
  inputs."hasts-v0_1_2".url = "path:./v0_1_2";
  inputs."hasts-v0_1_3".url = "path:./v0_1_3";
  inputs."hasts-v0_1_4".url = "path:./v0_1_4";
  inputs."hasts-v0_1_5".url = "path:./v0_1_5";
  inputs."hasts-v0_1_6".url = "path:./v0_1_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}