{
  description = ''A tensor (multidimensional array) library for Nim'';
  inputs."arraymancer-master".url = "path:./master";
  inputs."arraymancer-v0_1_0".url = "path:./v0_1_0";
  inputs."arraymancer-v0_1_1".url = "path:./v0_1_1";
  inputs."arraymancer-v0_1_2".url = "path:./v0_1_2";
  inputs."arraymancer-v0_1_3".url = "path:./v0_1_3";
  inputs."arraymancer-v0_2_0".url = "path:./v0_2_0";
  inputs."arraymancer-v0_3_0".url = "path:./v0_3_0";
  inputs."arraymancer-v0_4_0".url = "path:./v0_4_0";
  inputs."arraymancer-v0_5_0".url = "path:./v0_5_0";
  inputs."arraymancer-v0_5_1".url = "path:./v0_5_1";
  inputs."arraymancer-v0_5_2".url = "path:./v0_5_2";
  inputs."arraymancer-v0_6_0".url = "path:./v0_6_0";
  inputs."arraymancer-v0_6_1".url = "path:./v0_6_1";
  inputs."arraymancer-v0_6_2".url = "path:./v0_6_2";
  inputs."arraymancer-v0_7_0".url = "path:./v0_7_0";
  inputs."arraymancer-v0_7_1".url = "path:./v0_7_1";
  inputs."arraymancer-v0_7_10".url = "path:./v0_7_10";
  inputs."arraymancer-v0_7_2".url = "path:./v0_7_2";
  inputs."arraymancer-v0_7_3".url = "path:./v0_7_3";
  inputs."arraymancer-v0_7_4".url = "path:./v0_7_4";
  inputs."arraymancer-v0_7_5".url = "path:./v0_7_5";
  inputs."arraymancer-v0_7_6".url = "path:./v0_7_6";
  inputs."arraymancer-v0_7_7".url = "path:./v0_7_7";
  inputs."arraymancer-v0_7_8".url = "path:./v0_7_8";
  inputs."arraymancer-v0_7_9".url = "path:./v0_7_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}