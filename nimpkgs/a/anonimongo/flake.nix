{
  description = ''ANOther pure NIm MONGO driver.'';
  inputs."anonimongo-develop".url = "path:./develop";
  inputs."anonimongo-master".url = "path:./master";
  inputs."anonimongo-v0_1_0".url = "path:./v0_1_0";
  inputs."anonimongo-v0_2_0".url = "path:./v0_2_0";
  inputs."anonimongo-v0_3_0".url = "path:./v0_3_0";
  inputs."anonimongo-v0_4_0".url = "path:./v0_4_0";
  inputs."anonimongo-v0_4_1".url = "path:./v0_4_1";
  inputs."anonimongo-v0_4_10".url = "path:./v0_4_10";
  inputs."anonimongo-v0_4_11".url = "path:./v0_4_11";
  inputs."anonimongo-v0_4_12".url = "path:./v0_4_12";
  inputs."anonimongo-v0_4_2".url = "path:./v0_4_2";
  inputs."anonimongo-v0_4_3".url = "path:./v0_4_3";
  inputs."anonimongo-v0_4_4".url = "path:./v0_4_4";
  inputs."anonimongo-v0_4_5".url = "path:./v0_4_5";
  inputs."anonimongo-v0_4_6".url = "path:./v0_4_6";
  inputs."anonimongo-v0_4_7".url = "path:./v0_4_7";
  inputs."anonimongo-v0_4_8".url = "path:./v0_4_8";
  inputs."anonimongo-v0_4_9".url = "path:./v0_4_9";
  inputs."anonimongo-v0_5_0".url = "path:./v0_5_0";
  inputs."anonimongo-v0_5_2".url = "path:./v0_5_2";
  inputs."anonimongo-v0_5_3".url = "path:./v0_5_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}