{
  description = ''minimal, performant mass file renamer'';
  inputs."rn-master".url = "path:./master";
  inputs."rn-v0_0_1".url = "path:./v0_0_1";
  inputs."rn-v0_0_2".url = "path:./v0_0_2";
  inputs."rn-v0_0_3".url = "path:./v0_0_3";
  inputs."rn-v0_0_4".url = "path:./v0_0_4";
  inputs."rn-v0_0_5".url = "path:./v0_0_5";
  inputs."rn-v0_0_6".url = "path:./v0_0_6";
  inputs."rn-v0_0_7".url = "path:./v0_0_7";
  inputs."rn-v0_0_8".url = "path:./v0_0_8";
  inputs."rn-v0_0_9".url = "path:./v0_0_9";
  inputs."rn-v0_1_0".url = "path:./v0_1_0";
  inputs."rn-v0_1_1".url = "path:./v0_1_1";
  inputs."rn-v0_1_2".url = "path:./v0_1_2";
  inputs."rn-v0_1_3".url = "path:./v0_1_3";
  inputs."rn-v0_1_4".url = "path:./v0_1_4";
  inputs."rn-v0_1_5".url = "path:./v0_1_5";
  inputs."rn-v0_1_6".url = "path:./v0_1_6";
  inputs."rn-v0_1_7".url = "path:./v0_1_7";
  inputs."rn-v0_1_8".url = "path:./v0_1_8";
  inputs."rn-v0_1_9".url = "path:./v0_1_9";
  inputs."rn-v0_2_0".url = "path:./v0_2_0";
  inputs."rn-v0_2_1".url = "path:./v0_2_1";
  inputs."rn-v0_2_2".url = "path:./v0_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}