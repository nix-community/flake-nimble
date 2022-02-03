{
  description = ''Decimal type support based on the IEEE 754 2008 specification.'';
  inputs."decimal128-master".url = "path:./master";
  inputs."decimal128-v0_1_0".url = "path:./v0_1_0";
  inputs."decimal128-v0_1_1".url = "path:./v0_1_1";
  inputs."decimal128-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}