{
  description = ''String algorithms with succinct data structures'';
  inputs."cello-master".url = "path:./master";
  inputs."cello-0_1_0".url = "path:./0_1_0";
  inputs."cello-0_1_1".url = "path:./0_1_1";
  inputs."cello-0_1_2".url = "path:./0_1_2";
  inputs."cello-0_1_3".url = "path:./0_1_3";
  inputs."cello-0_1_4".url = "path:./0_1_4";
  inputs."cello-0_1_5".url = "path:./0_1_5";
  inputs."cello-0_1_6".url = "path:./0_1_6";
  inputs."cello-0_2_0".url = "path:./0_2_0";
  inputs."cello-0_3_0".url = "path:./0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}