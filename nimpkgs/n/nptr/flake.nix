{
  description = ''Nim lang smart pointers'';
  inputs."nptr-develop".url = "path:./develop";
  inputs."nptr-main".url = "path:./main";
  inputs."nptr-v0_1_0".url = "path:./v0_1_0";
  inputs."nptr-v0_1_1".url = "path:./v0_1_1";
  inputs."nptr-v0_1_10".url = "path:./v0_1_10";
  inputs."nptr-v0_1_2".url = "path:./v0_1_2";
  inputs."nptr-v0_1_3".url = "path:./v0_1_3";
  inputs."nptr-v0_1_4".url = "path:./v0_1_4";
  inputs."nptr-v0_1_5".url = "path:./v0_1_5";
  inputs."nptr-v0_1_6".url = "path:./v0_1_6";
  inputs."nptr-v0_1_7".url = "path:./v0_1_7";
  inputs."nptr-v0_1_8".url = "path:./v0_1_8";
  inputs."nptr-v0_1_9".url = "path:./v0_1_9";
  inputs."nptr-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}