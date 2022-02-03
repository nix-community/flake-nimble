{
  description = ''A dataframe library with a dplyr like API'';
  inputs."datamancer-master".url = "path:./master";
  inputs."datamancer-v0_1_0".url = "path:./v0_1_0";
  inputs."datamancer-v0_1_1".url = "path:./v0_1_1";
  inputs."datamancer-v0_1_10".url = "path:./v0_1_10";
  inputs."datamancer-v0_1_11".url = "path:./v0_1_11";
  inputs."datamancer-v0_1_2".url = "path:./v0_1_2";
  inputs."datamancer-v0_1_3".url = "path:./v0_1_3";
  inputs."datamancer-v0_1_4".url = "path:./v0_1_4";
  inputs."datamancer-v0_1_5".url = "path:./v0_1_5";
  inputs."datamancer-v0_1_6".url = "path:./v0_1_6";
  inputs."datamancer-v0_1_7".url = "path:./v0_1_7";
  inputs."datamancer-v0_1_8".url = "path:./v0_1_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}