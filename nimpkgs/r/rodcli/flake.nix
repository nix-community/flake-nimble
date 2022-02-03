{
  description = ''making Nim development easier in the command-line'';
  inputs."rodcli-master".url = "path:./master";
  inputs."rodcli-v0_1_2".url = "path:./v0_1_2";
  inputs."rodcli-v0_1_3".url = "path:./v0_1_3";
  inputs."rodcli-v0_1_4".url = "path:./v0_1_4";
  inputs."rodcli-v0_1_5".url = "path:./v0_1_5";
  inputs."rodcli-v0_1_6".url = "path:./v0_1_6";
  inputs."rodcli-v0_1_7".url = "path:./v0_1_7";
  inputs."rodcli-v0_1_8".url = "path:./v0_1_8";
  inputs."rodcli-v0_1_9".url = "path:./v0_1_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}