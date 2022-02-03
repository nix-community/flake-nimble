{
  description = ''Algebraic data types and pattern matching'';
  inputs."patty-master".url = "path:./master";
  inputs."patty-0_1_0".url = "path:./0_1_0";
  inputs."patty-0_1_1".url = "path:./0_1_1";
  inputs."patty-0_1_10".url = "path:./0_1_10";
  inputs."patty-0_1_2".url = "path:./0_1_2";
  inputs."patty-0_1_3".url = "path:./0_1_3";
  inputs."patty-0_1_4".url = "path:./0_1_4";
  inputs."patty-0_1_5".url = "path:./0_1_5";
  inputs."patty-0_1_6".url = "path:./0_1_6";
  inputs."patty-0_1_7".url = "path:./0_1_7";
  inputs."patty-0_1_8".url = "path:./0_1_8";
  inputs."patty-0_1_9".url = "path:./0_1_9";
  inputs."patty-0_2_0".url = "path:./0_2_0";
  inputs."patty-0_2_1".url = "path:./0_2_1";
  inputs."patty-0_3_0".url = "path:./0_3_0";
  inputs."patty-0_3_1".url = "path:./0_3_1";
  inputs."patty-0_3_2".url = "path:./0_3_2";
  inputs."patty-0_3_3".url = "path:./0_3_3";
  inputs."patty-0_3_4".url = "path:./0_3_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}